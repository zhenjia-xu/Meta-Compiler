package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class BinaryMinus extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryMinus(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary minus needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new IntConstant(leftValue - rightValue);
		}
		return new BinaryMinus(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary minus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary minus]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if(left == right || (left instanceof ImmediateOperand && right instanceof ImmediateOperand && ((ImmediateOperand) left).value == ((ImmediateOperand) right).value)){
			operand = new ImmediateOperand(0);
			return;
		}
		operand = RegisterManager.getTemporaryRegister();
		instructionList.add(new MoveInstruction(operand, leftExpression.operand));
		Instruction instruction = new BinaryInstruction(BinaryInstruction.BinaryOp.SUB, operand, rightExpression.operand);
		instructionList.add(instruction);
	}
}
