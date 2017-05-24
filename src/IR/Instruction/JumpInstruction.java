package IR.Instruction;

import Translation.Translator;

public class JumpInstruction extends Instruction {
	public LabelInstruction target;

	public JumpInstruction(LabelInstruction target){
		this.target = target;
	}

	@Override
	public void Prepare(){}
	@Override
	public String getInstructionOfNASM(){
		return Translator.getInstruction("jmp", target.block.getName());
	}
	@Override
	public String toString(){
		return String.format("jump %s", target.block);
	}
}
