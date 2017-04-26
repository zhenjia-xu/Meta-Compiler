package AST.Symbol;

import AST.Type.Type;
import IR.Location;
import Utility.Utility;

public class Symbol {
	private String name;
	private Type type;
	public Location location;

	public Symbol(String name, Type type){
		this.name = name;
		this.type = type;
		this.location = null;
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
