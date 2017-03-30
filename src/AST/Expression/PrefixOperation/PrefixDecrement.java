package AST.Expression.PrefixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class PrefixDecrement extends Expression{
	private Expression expression;

	private PrefixDecrement(Expression expression){
		super(expression.getType(), true);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix decrement needs int");
		}
		if(expression.getLeftValue() == false){
			throw new CompilationError("prefix decrement needs a left-value");
		}
		return new PrefixDecrement(expression);
	}
	@Override
	public String toString(){
		return "prefix decrement";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix decrement]\n"
				+ expression.toString(indents + 1);
	}
}
