package AST.Symbol;

import AST.Type.Type;
import IR.VirtualRegister;
import Utility.Utility;

public class Symbol {
	private String name;
	private Type type;
	public VirtualRegister virtualRegister;

	public Symbol(String name, Type type){
		this.name = name;
		this.type = type;
		virtualRegister = null;
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
