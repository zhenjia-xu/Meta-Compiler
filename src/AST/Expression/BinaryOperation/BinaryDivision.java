package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryDivision extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryDivision(Expression leftExpression, Expression rightExpressoin){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary division needs int");
		}
		return new BinaryDivision(leftExpression, rightExpressoin);
	}
	@Override
	public String toString(){
		return "binary division";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary division]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
