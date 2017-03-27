package AST.Symbol;

import AST.Type.Type;
import Utility.Utility;

public class Symbol {
	private String name;
	private Type type;

	public Symbol(String name, Type type){
		this.name = name;
		this.type = type;
	}
	public String getName(){
		return name;
	}
	public Type getType(){
		return type;
	}
	public String toString(int indents){
		return Utility.getIndent(indents) + "name: " + name + "  type: " + type + "\n";
	}

}
