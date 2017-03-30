package AST.Expression.BinaryOperation;


import AST.Constant.BoolConstant;
import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.CompilationError;
import Utility.Utility;

public class BinaryLess extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryLess(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		Type leftType = leftExpression.getType();
		Type rightType = rightExpression.getType();
		if(leftType instanceof IntType && rightType instanceof IntType){
			return new BinaryLess(leftExpression, rightExpression);
		}
		if(leftType instanceof StringType && rightType instanceof StringType){
			return new BinaryLess(leftExpression, rightExpression);
		}
		throw new CompilationError("binary less needs int or string");
	}
	@Override
	public String toString(){
		return "binary less";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary less]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
