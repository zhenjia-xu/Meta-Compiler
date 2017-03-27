package AST.Constant;

import AST.Type.NullType;
import Utility.Utility;

public class NullConstant extends Constant{
	public NullConstant(){
		super(NullType.getInstance());
	}
	@Override
	public String toString(){
		return "null constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[null constant]\n";
	}
}
