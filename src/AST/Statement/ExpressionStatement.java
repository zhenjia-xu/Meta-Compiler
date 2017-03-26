package AST.Statement;

import AST.Expression.Expression;
import Utility.Utility;

public class ExpressionStatement extends Statement{
	private Expression expression;

	public ExpressionStatement(Expression expression){
		this.expression = expression;
	}
	public Expression getExpression(){
		return expression;
	}
	@Override
	public String toString(){
		return "expression statement";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[expression statement]\n");
		str.append(expression.toString(indents + 1));
		return str.toString();
	}
}
