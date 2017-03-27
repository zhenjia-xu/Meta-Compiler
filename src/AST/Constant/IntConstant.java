package AST.Constant;

import AST.Type.IntType;
import Utility.Utility;

public class IntConstant extends Constant{
	private int value;

	public IntConstant(int value){
		super(IntType.getInstance());
		this.value = value;
	}
	@Override
	public String toString(){
		return "int constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[int constant: " + value + "]\n";
	}
}
