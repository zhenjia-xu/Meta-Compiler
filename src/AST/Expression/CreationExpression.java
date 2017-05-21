package AST.Expression;

import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.*;

import java.util.ArrayList;
import java.util.List;

public class CreationExpression extends Expression{
	private List<Expression> expressionsList;

	private CreationExpression(Type type, List<Expression> expressionsList){
		super(type, false);
		this.expressionsList = expressionsList;
	}
	public static Expression getExpression(Type type, List<Expression> expressionsList){
		int size = expressionsList.size();
		if(!(type instanceof ClassType) && size == 0){
			throw new CompilationError("Can't new a basic type");
		}
		if(size != 0){
			if(expressionsList.get(0) == null){
				throw new CompilationError("Creation Error");
			}
			boolean flag = true;
			for(Expression expression: expressionsList){
				if(expression == null){
					flag = false;
				} else{
					if(!flag){
						throw new CompilationError("Creation Error");
					}
				}
			}
		}
		if(size == 0) {
			return new CreationExpression(type, expressionsList);
		}else{
			Type arrayType = new ArrayType(type, size);
			return new CreationExpression(arrayType, expressionsList);
		}
	}
	private void allocate(VirtualRegister base, Type type, List<Operand> list, List<Instruction> instructionList){
		if(type instanceof ClassType){
			instructionList.add(new AllocateInstruction(base, new ImmediateOperand(((ClassType)type).getAllocateSize())));
			if(((ClassType)type).getConstrustFunction() != null){
				VirtualRegister bak = RegisterManager.getTemporaryRegister();
				List<Operand> parameterList = new ArrayList<>();
				parameterList.add(base);
				instructionList.add(new FunctionCallInstruction(((ClassType) type).getConstrustFunction(), null, parameterList));
			}
		}else{
			VirtualRegister allocateSize = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(allocateSize, list.get(0)));
			instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.INC, allocateSize));
			instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, allocateSize, new ImmediateOperand(8)));
			instructionList.add(new AllocateInstruction(base, allocateSize));
			instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.SUB, allocateSize, new ImmediateOperand(8)));
			instructionList.add(new MoveInstruction(new Address(base), allocateSize));
			instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, base, new ImmediateOperand(8)));
			Type newType = ((ArrayType)type).reduceDimension();
			list.remove(0);

			if(newType instanceof ClassType || !list.isEmpty()){
				LabelInstruction conditionLabel = new LabelInstruction("allocate_condition");
				LabelInstruction bodyLabel = new LabelInstruction("allocate_body");
				LabelInstruction exitLabel = new LabelInstruction("allocate_exit");
				/*
					%...:
						(init)
						jump %allocate_condition
					%allocate_body:
						(statement)
						jump allocate_increment
					%allocate_condition:
						cmp pos end
						cjump LE bodyLabel
						jump exitLabel
					%allocate_exit:
						...
				*/
				VirtualRegister pos = RegisterManager.getTemporaryRegister();
				VirtualRegister end = RegisterManager.getTemporaryRegister();
				instructionList.add(new MoveInstruction(pos, base));
				instructionList.add(new MoveInstruction(end, base));
				instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, end, allocateSize));
				instructionList.add(new JumpInstruction(conditionLabel));

				instructionList.add(bodyLabel);
				VirtualRegister tmp = RegisterManager.getTemporaryRegister();
				instructionList.add(new MoveInstruction(tmp, new Address(pos)));
				allocate(tmp, newType, list, instructionList);
				instructionList.add(new MoveInstruction(new Address(pos), tmp));
				instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, pos, new ImmediateOperand(8)));
				instructionList.add(new JumpInstruction(conditionLabel));

				instructionList.add(conditionLabel);
				instructionList.add(new CompareInstruction(pos, end));
				instructionList.add(new CjumpInstruction(ProgramIR.ConditionOp.LE, bodyLabel));
				instructionList.add(new JumpInstruction(exitLabel));

				instructionList.add(exitLabel);
			}
		}
	}

	@Override
	public String toString(){
		return "creation";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[creation] " + getType().toString() + "\n");
		for(Expression expression: expressionsList){
			if(expression == null){
				str.append(Utility.getIndent(indents + 1) + "null\n");
			}else{
				str.append(expression.toString(indents + 1));
			}
		}
		return str.toString();
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		operand = RegisterManager.getTemporaryRegister();
		List<Operand> list = new ArrayList<>();
		for(Expression exp: expressionsList)
			if(exp != null){
				exp.generateInstruction(instructionList);
				list.add(exp.operand);
			}
		allocate((VirtualRegister)operand, getType(), list, instructionList);
	}
}
