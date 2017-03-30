package AST.Expression.PrefixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class PrefixIncrement extends Expression{
	private Expression expression;

	private PrefixIncrement(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix increment needs int");
		}
		if(expression.getLeftValue() == false){
			throw new CompilationError("prefix increment needs a left-value");
		}
		return new PrefixIncrement(expression);
	}
	@Override
	public String toString(){
		return "prefix increment";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix increment]"
				+ expression.toString(indents + 1);
	}
}
