package AST.Constant;

import AST.Type.BoolType;
import IR.Instruction;
import Utility.Utility;

import java.util.List;

public class BoolConstant extends Constant{
	private boolean value;

	public BoolConstant(boolean value){
		super(BoolType.getInstance());
		this.value = value;
	}
	public boolean getValue(){
		return value;
	}
	@Override
	public String toString(){
		return "bool constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[bool constant: " + value + "]\n";
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {

	}
}
