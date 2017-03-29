package AST.Expression.PrefixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;
import AST.Constant.BoolConstant;

public class PrefixNot extends Expression{
	Expression expression;

	private PrefixNot(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof BoolType)){
			throw new CompilationError("prefix not needs bool");
		}
		if(expression instanceof BoolConstant){
			boolean value = ((BoolConstant) expression).getValue();
			return new BoolConstant(!value);
		}else{
			return new PrefixNot(expression);
		}
	}
	@Override
	public String toString(){
		return "prefix not";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix not]"
				+ expression.toString(indents + 1);
	}
}
