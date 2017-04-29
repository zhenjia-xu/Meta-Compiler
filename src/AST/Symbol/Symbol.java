package AST.Symbol;

import AST.Type.Type;
import IR.Address;
import Utility.Utility;

public class Symbol {
	private String name;
	private Type type;
	public Address address;

	public Symbol(String name, Type type){
		this.name = name;
		this.type = type;
		this.address = new Address(name);
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
