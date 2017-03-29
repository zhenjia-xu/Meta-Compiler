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
