package AST.Expression.BinaryOperation;

import AST.Constant.*;
import AST.Expression.FunctionCallExpression;
import AST.Expression.IdentifierExpression;
import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.*;
import AST.Expression.Expression;

import java.util.ArrayList;
import java.util.List;

public class BinaryNotEqual extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryNotEqual(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType().compatibleWith(rightExpression.getType()))){
			throw new CompilationError("binary not equal needs two compatible type");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new BoolConstant(leftValue != rightValue);
		}
		if((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)){
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpression).getValue();
			return new BoolConstant(leftValue != rightValue);
		}
		if((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)){
			String leftValue = ((StringConstant) leftExpression).getValue();
			String rightValue = ((StringConstant) rightExpression).getValue();
			return new BoolConstant(!leftValue.equals(rightValue));
		}
		if((leftExpression instanceof NullConstant) && (rightExpression instanceof NullConstant)){
			return new BoolConstant(false);
		}
		if(leftExpression.getType() instanceof StringType && rightExpression.getType() instanceof StringType){
			List<Expression> expressionList = new ArrayList<>();
			expressionList.add(leftExpression);
			expressionList.add(rightExpression);
			return FunctionCallExpression.getExpression(
					IdentifierExpression.getExpression("__string_NEQ"),
					expressionList
			);
		}
		return new BinaryNotEqual(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary not equal";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary not equal]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		operand = RegisterManager.getTemporaryRegister();
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if(left == right || (left instanceof ImmediateOperand && right instanceof ImmediateOperand && ((ImmediateOperand) left).value == ((ImmediateOperand) right).value)){
			operand = new ImmediateOperand(0);
			return;
		}
		if(left instanceof Address && right instanceof Address){
			VirtualRegister tmp = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(tmp, left));
			instructionList.add(new CompareInstruction(tmp, right));
		}else{
			instructionList.add(new CompareInstruction(left, right));
		}
		instructionList.add(new CsetInstruction(ProgramIR.ConditionOp.NEQ, operand));
	}
}
