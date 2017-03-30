package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryMultiplication extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryMultiplication(Expression leftExpression, Expression rightExpressoin){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary multiplication needs int");
		}
		return new BinaryMultiplication(leftExpression, rightExpressoin);
	}
	@Override
	public String toString(){
		return "binary multiplication";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary multiplication]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
