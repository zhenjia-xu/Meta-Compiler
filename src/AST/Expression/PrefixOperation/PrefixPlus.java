package AST.Expression.PrefixOperation;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class PrefixPlus extends Expression{
	Expression expression;

	private PrefixPlus(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix plus needs int");
		}
		return new PrefixPlus(expression);
	}
	@Override
	public String toString(){
		return "prefix plus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix plus]"
				+ expression.toString(indents + 1);
	}
}
