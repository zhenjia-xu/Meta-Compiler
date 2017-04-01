package AST.Type;

import AST.Symbol.Scope;
import Utility.Utility;

import java.util.Map;

public class StringType extends Type implements Scope{
	private static final StringType instance = new StringType();

	private StringType(){}
	static public StringType getInstance(){
		return instance;
	}
	@Override
	public boolean compatibleWith(Type other){
		return this == other || (other instanceof NullType);
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
