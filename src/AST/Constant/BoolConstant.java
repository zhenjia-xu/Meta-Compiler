package AST.Constant;

import AST.Type.BoolType;
import Utility.Utility;

public class BoolConstant extends Constant{
	private boolean value;

	public BoolConstant(boolean value){
		super(BoolType.getInstance());
		this.value = value;
	}
	@Override
	public String toString(){
		return "bool constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[bool constant: " + value + "]\n";
	}
}
