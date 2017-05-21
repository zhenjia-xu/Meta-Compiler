package AST.Constant;

import AST.Type.StringType;
import IR.Instruction.Instruction;
import IR.MemoryTag;
import Utility.Utility;

import java.util.List;

public class StringConstant extends Constant{
	private String value;

	public StringConstant(String value){
		super(StringType.getInstance());
		this.value = value;
	}
	public String getValue(){
		return value;
	}
	@Override
	public String toString(){
		return "string constant";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[string constant: " + value + "]\n";
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		operand = MemoryTag.getMemoryTag_StringConst(value);
	}
}
