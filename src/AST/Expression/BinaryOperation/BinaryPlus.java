package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

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
			return new BinaryPlus(leftExpression, rightExpression);
		}
		if(leftType instanceof StringType && rightType instanceof StringType){
			return new BinaryPlus(leftExpression, rightExpression);
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
}
