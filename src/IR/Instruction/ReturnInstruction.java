package IR.Instruction;

import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;

public class ReturnInstruction extends Instruction {
	private Operand returnValue;

	public ReturnInstruction(Operand returnValue) {
		this.returnValue = returnValue;
	}

	@Override
	public void Prepare() {
		RegisterManager.MemRegisterGetOffset(returnValue);
	}

	@Override
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		PhysicalOperand PhysicalReturnValue = PhysicalOperand.get(str, returnValue);
		str.append(Translator.getInstruction("mov", "rax", PhysicalReturnValue.toString()));
		return str.toString();
	}

	@Override
	public String toString() {
		return String.format("ret %s", returnValue);
	}
}