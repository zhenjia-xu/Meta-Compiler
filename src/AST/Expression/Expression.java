package AST.Expression;

import AST.Type.Type;
public abstract class Expression {
	private Type type;

	public abstract String toString(int indents);
	public Type getType(){
		return type;
	}
}
