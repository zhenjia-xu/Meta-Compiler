package AST.Expression;

import AST.Type.Type;
public abstract class Expression {
	private Type type;
	private boolean leftValue;

	public Expression(Type type, boolean leftValue){
		this.type = type;
		this.leftValue = leftValue;
	}
	public Type getType(){
		return type;
	}
	public boolean getLeftValue(){
		return leftValue;
	}
	public abstract String toString(int indents);
}
