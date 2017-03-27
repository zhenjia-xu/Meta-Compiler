package AST.Constant;

import AST.Type.StringType;
import Utility.Utility;

public class StringConstant extends Constant{
	private String value;

	public StringConstant(String value){
		super(StringType.getInstance());
		this.value = value;
	}
	@Override
	public String toString(){
		return "string constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[string constant: " + value + "]\n";
	}
}
