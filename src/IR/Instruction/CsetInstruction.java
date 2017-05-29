package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import Utility.RuntimeError;

import java.util.HashMap;
import java.util.Map;

public class CsetInstruction extends Instruction {
	public ProgramIR.ConditionOp op;
	public VirtualRegister target;
	static private Map<String, String> lowest8Reg = new HashMap<String, String>() {{
		put("rax", "al");
		put("rcx", "cl");
		put("rdx", "dl");
		put("rbx", "bl");
		put("rsp", "spl");
		put("rbp", "bpl");
		put("rsi", "sil");
		put("rdi", "dil");
		put("r8", "r8b");
		put("r9", "r9b");
		put("r10", "r10b");
		put("r11", "r11b");
		put("r12", "r12b");
		put("r13", "r13b");
		put("r14", "r14b");
		put("r15", "r15b");
	}};

	public CsetInstruction(ProgramIR.ConditionOp op, Operand target) {
		this.op = op;
		if (!(target instanceof VirtualRegister)) {
			throw new RuntimeError("target of set instruction should be register");
		}
		this.target = (VirtualRegister) target;
		killSet.add((VirtualRegister) target);
	}

	@Override
	public void Prepare() {
		RegisterManager.RegisterStatistics(target);
	}

	@Override
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(str, target);
		if (Translator.nowFunction.idMap.containsKey(target)) {
			str.append(Translator.getInstruction("mov", "rax", physicalTarget.toString()));
			str.append(Translator.getInstruction("mov", "rax", "0"));
			str.append(Translator.getInstruction("set" + Translator.getNASMofCondition(op), "al"));
			str.append(Translator.getInstruction("mov", physicalTarget.toString(), "rax"));
		} else {
			str.append(Translator.getInstruction("mov", physicalTarget.toString(), "0"));
			str.append(Translator.getInstruction("set" + Translator.getNASMofCondition(op), lowest8Reg.get(physicalTarget.toString())));
		}
		return str.toString();
	}

	@Override
	public String toString() {
		return String.format("set %s %s", op, target);
	}
}
