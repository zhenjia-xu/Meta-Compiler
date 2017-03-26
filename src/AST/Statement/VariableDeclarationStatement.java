package AST.Statement;

import AST.Expression.Expression;
import AST.Type.Type;
import Utility.Utility;

public class VariableDeclarationStatement extends Statement {
	private Type type;
	private String name;
	private Expression expression;

	public VariableDeclarationStatement(String name, Type type) {
		this.type = type;
		this.name = name;
		this.expression = null;
	}

	public void addExpression(Expression expression) {
		this.expression = expression;
	}
	public Type getType(){
		return type;
	}
	public String getName(){
		return name;
	}
	public Expression getExpression(){
		return expression;
	}
	@Override
	public String toString() {
		return "variable declaration statement (" + type + name + ")";
	}
	@Override
	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[variable declaration statement]\n");
		str.append(Utility.getIndent(indents + 1) + "name:" + name + " , type:" + type + "\n");
		if(expression != null){
			str.append(expression.toString(indents + 1));
		}
		return str.toString();
	}
}
