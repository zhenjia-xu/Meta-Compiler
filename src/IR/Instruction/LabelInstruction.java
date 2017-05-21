package IR.Instruction;

import IR.Block;
import Utility.RuntimeError;

public class LabelInstruction extends Instruction {
	private String name;
	public Block block;

	public LabelInstruction(String name){
		this.name = name;
	}
	public String getName(){
		return name;
	}

	@Override
	public void Prepare(){}
	@Override
	public String getInstructionOfNASM(){
		throw new RuntimeError("Label instruction should not getInstructionOfNASM");
	}
	@Override
	public String toString(){
		return "%" + name;
	}
}
