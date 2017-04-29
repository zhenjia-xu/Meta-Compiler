package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Constant.StringConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.BinaryInstruction;
import IR.Instruction;
import IR.MemoryManager;
import IR.Address;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class BinaryGreaterEqual extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryGreaterEqual(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
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
				return new BoolConstant(leftValue >= rightValue);
			}else {
				if((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)){
					String leftValue = ((StringConstant) leftExpression).getValue();
					String rightValue = ((StringConstant) rightExpression).getValue();
					return new BoolConstant(leftValue.compareTo(rightValue) >= 0);
				}else {
					return new BinaryGreaterEqual(leftExpression, rightExpression);
				}
			}
		}
		if(leftType instanceof StringType && rightType instanceof StringType){
			return new BinaryGreaterEqual(leftExpression, rightExpression);
		}
		throw new CompilationError("binary greater equal needs int or string");
	}
	@Override
	public String toString(){
		return "binary greater equal";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary greater equal]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		operand = MemoryManager.getTemporaryAddress();
		Instruction instruction = new BinaryInstruction(BinaryInstruction.BinaryOp.GREQ, (Address) operand, leftExpression.operand, rightExpression.operand);
		instructionList.add(instruction);
	}
}
