package AST.Expression.BinaryOperation;

import AST.Constant.*;
import AST.Type.*;
import Utility.*;
import AST.Expression.Expression;

public class BinaryNotEqual extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryNotEqual(Expression leftExpression, Expression rightExpression){
		super(BoolType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType().compatibleWith(rightExpression.getType()))){
			throw new CompilationError("binary not equal needs two compatible type");
		}
		return new BinaryNotEqual(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary not equal";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary not equal]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
}
