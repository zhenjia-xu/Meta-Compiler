package AST.Symbol;

import AST.Type.Type;

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

}
