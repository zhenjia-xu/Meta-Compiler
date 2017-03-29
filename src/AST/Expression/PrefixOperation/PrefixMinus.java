package AST.Expression.PrefixOperation;

import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import Utility.*;

public class PrefixMinus extends Expression{
	Expression expression;

	private PrefixMinus(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix minus needs int");
		}
		return new PrefixMinus(expression);
	}
	@Override
	public String toString(){
		return "prefix minus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix minus]"
				+ expression.toString(indents + 1);
	}
}
