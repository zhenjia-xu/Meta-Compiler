package IR;

import java.util.ArrayList;
import java.util.List;
import Utility.Utility;

public class Block {
	private FunctionIR functionIR;
	private String blockName;
	private int id;
	private List<Instruction> instructionList;

	public Block(FunctionIR functionGraph, String blockName, int id){
		this.functionIR = functionGraph;
		this.blockName = blockName;
		this.id = id;
		this.instructionList = new ArrayList<>();
	}
	public void add(Instruction instruction){
		instructionList.add(instruction);
	}

	@Override
	public String toString(){
		return String.format("%s.%d.%s", functionIR.getName(), id, blockName);
	}
	public String toString(int indents){
		StringBuilder str = new StringBuilder(Utility.getIndent(indents) + String.format("%s.%d.%s:\n", functionIR.getName(), id, blockName));
		for(Instruction instruction: instructionList){
			str.append(instruction.toString(indents + 1));
		}
		return str.toString();
	}
}
