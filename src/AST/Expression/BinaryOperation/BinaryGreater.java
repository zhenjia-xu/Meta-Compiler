package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryGreater extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryGreater(Expression leftExpression, Expression rightExpressoin){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpressoin){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpressoin.getType() instanceof IntType)){
			throw new CompilationError("binary greater needs int");
		}
		return new BinaryGreater(leftExpression, rightExpressoin);
	}
	@Override
	public String toString(){
		return "binary greater";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary greater]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
