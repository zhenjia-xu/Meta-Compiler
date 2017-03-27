package AST.Type;

import Utility.Utility;

public class StringType extends Type{
	private static final StringType instance = new StringType();
	private StringType(){}
	static public StringType getInstance(){
		return instance;
	}
	@Override
	public boolean compatibleWith(Type other){
		return (this == other || other == NullType.getInstance());
	}
	@Override
	public String toString(){
		return "string";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "string";
	}
}
