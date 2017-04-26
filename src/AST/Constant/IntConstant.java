package AST.Constant;

import AST.Type.IntType;
import IR.Instruction;
import Utility.Utility;

import java.util.List;

public class IntConstant extends Constant{
	private int value;

	public IntConstant(int value){
		super(IntType.getInstance());
		this.value = value;
	}
	public int getValue(){
		return value;
	}
	@Override
	public String toString(){
		return "int constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[int constant: " + value + "]\n";
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {

	}
}
