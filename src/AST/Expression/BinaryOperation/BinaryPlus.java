package AST.Expression.BinaryOperation;


import AST.Constant.StringConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Expression.FunctionCallExpression;
import AST.Expression.IdentifierExpression;
import AST.Type.*;
import IR.*;
import IR.Instruction.*;
import Utility.CompilationError;
import Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BinaryPlus extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryPlus(Expression leftExpression, Expression rightExpression){
		super(leftExpression.getType(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		Type leftType = leftExpression.getType();
		Type rightType = rightExpression.getType();
		if(leftType instanceof IntType && rightType instanceof IntType){
			if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
				int leftValue = ((IntConstant) leftExpression).getValue();
				int rightValue = ((IntConstant) rightExpression).getValue();
				return new IntConstant(leftValue + rightValue);
			}else {
				return new BinaryPlus(leftExpression, rightExpression);
			}
		}
		if(leftType instanceof StringType && rightType instanceof StringType){
			if((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)){
				String leftValue = ((StringConstant) leftExpression).getValue();
				String rightValue = ((StringConstant) rightExpression).getValue();
				return new StringConstant(leftValue + rightValue);
			}else {
				List<Expression> expressionList = new ArrayList<>();
				expressionList.add(leftExpression);
				expressionList.add(rightExpression);
				return FunctionCallExpression.getExpression(
						IdentifierExpression.getExpression("__string_connection"),
						expressionList
				);
			}
		}
		throw new CompilationError("binary plus needs int or string");
	}
	@Override
	public String toString(){
		return "binary plus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary plus]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		Operand left = leftExpression.operand;
		Operand right = rightExpression.operand;
		if(left instanceof ImmediateOperand && ((ImmediateOperand) left).value == 0){
			operand = right;
			return;
		}
		if(right instanceof ImmediateOperand && ((ImmediateOperand) right).value == 0){
			operand = left;
			return;
		}
		operand = RegisterManager.getTemporaryRegister();
		instructionList.add(new MoveInstruction(operand, leftExpression.operand));
		Instruction instruction = new BinaryInstruction(BinaryInstruction.BinaryOp.ADD, operand, rightExpression.operand);
		instructionList.add(instruction);
	}
}
