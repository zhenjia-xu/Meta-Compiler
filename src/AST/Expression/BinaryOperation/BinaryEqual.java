package AST.Expression.BinaryOperation;

import AST.Constant.*;
import AST.Type.*;
import Utility.*;
import AST.Expression.Expression;

public class BinaryEqual extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryEqual(Expression leftExpression, Expression rightExpressoin){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType().compatibleWith(rightExpression.getType()))){
			throw new CompilationError("binary equal needs two compatible type");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpressoin).getValue();
			return new BoolConstant(leftValue == rightValue);
		}
		if((leftExpression instanceof BoolConstant) && (rightExpression instanceof BoolConstant)){
			boolean leftValue = ((BoolConstant) leftExpression).getValue();
			boolean rightValue = ((BoolConstant) rightExpressoin).getValue();
			return new BoolConstant(leftValue == rightValue);
		}
		if((leftExpression instanceof StringConstant) && (rightExpression instanceof StringConstant)){
			String leftValue = ((StringConstant) leftExpression).getValue();
			String rightValue = ((StringConstant) rightExpressoin).getValue();
			return new BoolConstant(leftValue == rightValue);
		}
		if((leftExpression instanceof NullConstant) && (rightExpression instanceof NullConstant)){
			new BoolConstant(true);
		}
		return new BinaryEqual(leftExpression, rightExpressoin);
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
