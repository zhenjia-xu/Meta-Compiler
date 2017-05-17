package AST.Expression;

import IR.*;
import Utility.*;
import AST.Type.*;

import java.util.List;

public class ArrayExpression extends Expression{
	public Expression arrayExpression, subscriptExpression;

	private ArrayExpression(Type type, Expression arrayExpression, Expression subscriptExpression){
		super(type, arrayExpression.getLeftValue());
		this.arrayExpression = arrayExpression;
		this.subscriptExpression = subscriptExpression;
	}
	public static Expression getExpression(Expression arrayExpression, Expression subscriptExpression){
		if(!(arrayExpression.getType() instanceof ArrayType)){
			throw new CompilationError("Can't find an array type in array subscript");
		}
		if(!(subscriptExpression.getType() instanceof IntType)){
			throw new CompilationError("The subscript should be int");
		}
		ArrayType arrayType = (ArrayType) arrayExpression.getType();
		return new ArrayExpression(arrayType.reduceDimension(), arrayExpression, subscriptExpression);
	}
	@Override
	public String toString(){
		return "array subscript";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[array subscript]\n");
		str.append(arrayExpression.toString(indents + 1));
		str.append(subscriptExpression.toString(indents + 1));
		return str.toString();
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		arrayExpression.generateInstruction(instructionList);
		subscriptExpression.generateInstruction(instructionList);
		VirtualRegister offset = RegisterManager.getTemporaryRegister();
		ArrayType arrayType = (ArrayType) arrayExpression.getType();
		Type newType = arrayType.reduceDimension();
		if(newType instanceof ClassType) {
			instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, offset, subscriptExpression.operand, new ImmediateOperand(((ClassType) newType).getAllocateSize())));
		}else{
			instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, offset, subscriptExpression.operand, new ImmediateOperand(4)));
		}
		VirtualRegister base, pos;
		pos = RegisterManager.getTemporaryRegister();
		if(arrayExpression.operand instanceof VirtualRegister){
			base = (VirtualRegister) arrayExpression.operand;
		}else{
			base = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(arrayExpression.operand, base));
		}
		instructionList.add(new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, pos, base, offset));
		operand = new Address(pos);
	}
}
