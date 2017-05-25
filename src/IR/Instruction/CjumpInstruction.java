package IR.Instruction;

import IR.ProgramIR;
import IR.VirtualRegister;
import Translation.Translator;

public class CjumpInstruction extends Instruction {
	public ProgramIR.ConditionOp op;
	public LabelInstruction target;

	public CjumpInstruction(ProgramIR.ConditionOp op, LabelInstruction target) {
		this.op = op;
		this.target = target;
	}

	@Override
	public void Prepare() {
	}

	@Override
	public void merge(VirtualRegister x, VirtualRegister y){}

	@Override
	public String getInstructionOfNASM() {
		return Translator.getInstruction("j" + Translator.getNASMofCondition(op), target.block.getName());
	}

	@Override
	public String toString() {
		return String.format("cjump %s %s", op, target.block);
	}
}
