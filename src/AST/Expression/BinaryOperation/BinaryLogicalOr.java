package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryLogicalOr extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLogicalOr(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary logical or needs int");
		}
		return new BinaryLogicalOr(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary logical or";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary logical or]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
