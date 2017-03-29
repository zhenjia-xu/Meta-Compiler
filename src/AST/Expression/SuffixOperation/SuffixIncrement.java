package AST.Expression.SuffixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class SuffixIncrement extends Expression{
	private Expression expression;

	private SuffixIncrement(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("suffix increment needs int");
		}
		if(expression.getLeftValue() == false){
			throw new CompilationError("suffix increment needs a left-value");
		}
		return new SuffixIncrement(expression);
	}
	@Override
	public String toString(){
		return "suffix increment";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[suffix increment]"
				+ expression.toString(indents + 1);
	}
}
