package AST.Type;

import Utility.Utility;

public class BoolType extends Type{
	private static final BoolType instance = new BoolType();

	private BoolType(){}
	static public BoolType getInstance(){
		return instance;
	}
	@Override
	public boolean compatibleWith(Type other){
		return this == other;
	}
	@Override
	public String toString(){
		return "bool";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "bool";
	}
}
