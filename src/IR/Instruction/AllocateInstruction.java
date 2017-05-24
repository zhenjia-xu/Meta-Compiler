package IR.Instruction;

import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;

public class AllocateInstruction extends Instruction {
	private VirtualRegister target;
	private Operand allocateSize;

	public AllocateInstruction(VirtualRegister target, Operand allocateSize){
		this.target = target;
		this.allocateSize = allocateSize;
		killSet.add(target);
		if(allocateSize instanceof VirtualRegister){
			useSet.add((VirtualRegister) allocateSize);
		}
	}

	@Override
	public void Prepare(){
		RegisterManager.MemRegisterGetOffset(target);
		RegisterManager.MemRegisterGetOffset(allocateSize);
	}
	@Override
	public String getInstructionOfNASM(){
		StringBuilder str = new StringBuilder();
		PhysicalOperand physicalSize = PhysicalOperand.get(str, allocateSize);
		str.append(Translator.saveRegister_Caller());
		str.append(Translator.getInstruction("mov", "rdi", physicalSize.toString()));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.restoreRegister_Caller());
		PhysicalOperand physicalTarget = PhysicalOperand.get(str, target);
		str.append(Translator.getInstruction("mov", physicalTarget.toString(), "rax"));
		return str.toString();
	}
	@Override
	public String toString(){
		return String.format("allocate %s %s", target, allocateSize);
	}
}
