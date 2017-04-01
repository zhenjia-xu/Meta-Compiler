package AST.Expression.BinaryOperation;

import AST.Constant.*;
import AST.Type.*;
import Utility.*;
import AST.Expression.Expression;

public class BinaryEqual extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryEqual(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType().compatibleWith(rightExpression.getType()))){
			throw new CompilationError("binary equal needs two compatible type");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new BoolConstant(leftValue == rightValue);
		}
		if((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)){
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpression).getValue();
			return new BoolConstant(leftValue == rightValue);
		}
		if((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)){
			String leftValue = ((StringConstant) leftExpression).getValue();
			String rightValue = ((StringConstant) rightExpression).getValue();
			return new BoolConstant(leftValue.equals(rightValue));
		}
		if((leftExpression instanceof NullConstant) && (rightExpression instanceof NullConstant)){
			return new BoolConstant(true);
		}
		return new BinaryEqual(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary equal";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary equal]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
