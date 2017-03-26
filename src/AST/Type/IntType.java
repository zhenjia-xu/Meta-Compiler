package AST.Type;

import Utility.Utility;

public class IntType extends Type{
	private static final IntType instance = new IntType();
	private IntType(){}
	static public IntType getInstance(){
		return instance;
	}
	@Override
	public boolean compatibleWith(Type other){
		return this == other;
	}
	@Override
	public String toString(){
		return "int";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "int";
	}
}
