package AST.Expression.PrefixOperation;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class PrefixReverse extends Expression{
	Expression expression;

	private PrefixReverse(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)) {
			throw new CompilationError("prefix reverse needs int");
		}
		return new PrefixReverse(expression);
	}
	@Override
	public String toString(){
		return "prefix reverse";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix reverse]\n"
				+ expression.toString(indents + 1);
	}
}
