package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		PhysicalOperand physicalSize = PhysicalOperand.get(str, allocateSize);
		Set<String> callerSet = new HashSet<>();
		List<String> callerList = new ArrayList<>();
		for(VirtualRegister reg: liveOut){
			if(Translator.nowFunction.registerMap.containsKey(reg)){
				callerSet.add(Translator.nowFunction.registerMap.get(reg));
			}
		}
		for(String reg: callerSet){
			if(FunctionIR.callerAll.contains(reg)) {
				callerList.add(reg);
			}
		}
		str.append(Translator.saveRegister_Caller(callerList));
		str.append(Translator.getInstruction("mov", "rdi", physicalSize.toString()));
		str.append(Translator.getCall("malloc"));
		str.append(Translator.restoreRegister_Caller(callerList));
		PhysicalOperand physicalTarget = PhysicalOperand.get(str, target);
		str.append(Translator.getInstruction("mov", physicalTarget.toString(), "rax"));
		return str.toString();
	}

	@Override
	public String toString() {
		return String.format("allocate %s %s", target, allocateSize);
	}
}
