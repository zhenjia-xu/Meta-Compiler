package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryLeftShift extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLeftShift(Expression leftExpression, Expression rightExpressoin){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary left shift needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpressoin).getValue();
			return new IntConstant(leftValue << rightValue);
		}else{
			return new BinaryLeftShift(leftExpression, rightExpressoin);
		}
	}
	@Override
	public String toString(){
		return "binary left shift";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary left shift]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
