package IR;

import java.util.ArrayList;
import java.util.List;

import IR.Instruction.Instruction;
import IR.Instruction.LabelInstruction;
import Utility.Utility;

public class Block {
	private FunctionIR functionIR;
	private String blockName;
	private int id;
	public LabelInstruction labelInstruction;
	public List<Instruction> instructionList;

	public Block(FunctionIR functionGraph, String blockName, int id, LabelInstruction labelInstruction){
		this.functionIR = functionGraph;
		this.blockName = blockName;
		this.id = id;
		this.instructionList = new ArrayList<>();
		this.labelInstruction = labelInstruction;
	}
	public void add(Instruction instruction){
		instructionList.add(instruction);
	}
	public String getName(){
		return String.format("%s.%d.%s", functionIR.getName(), id, blockName);
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
