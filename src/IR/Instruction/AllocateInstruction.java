package IR.Instruction;

import IR.Address;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;

import java.nio.file.AccessDeniedException;

public class AllocateInstruction extends Instruction {
	private VirtualRegister target;
	private Operand allocateSize;

	public AllocateInstruction(VirtualRegister target, Operand allocateSize) {
		this.target = target;
		this.allocateSize = allocateSize;
		killSet.add(target);
		if (allocateSize instanceof VirtualRegister) {
			useSet.add((VirtualRegister) allocateSize);
		}
		if (allocateSize instanceof Address) {
			useSet.add(((Address) allocateSize).base);
		}
	}

	@Override
	public void Prepare() {
		RegisterManager.RegisterStatistics(target);
		RegisterManager.RegisterStatistics(allocateSize);
	}

	@Override
	public void merge(VirtualRegister x, VirtualRegister y){
		if(target == x){
			target = y;
		}
		if(allocateSize instanceof VirtualRegister && allocateSize == x){
			allocateSize = y;
		}
		if(allocateSize instanceof Address && ((Address) allocateSize).base == x){
			((Address) allocateSize).base = y;
		}
	}

	@Override
	public String getInstructionOfNASM() {
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
	public String toString() {
		return String.format("allocate %s %s", target, allocateSize);
	}
}
