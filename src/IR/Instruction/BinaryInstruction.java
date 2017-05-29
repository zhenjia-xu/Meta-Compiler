package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalAdd;
import Translation.PhysicalOperand.PhysicalImm;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.PhysicalOperand.PhysicalReg;
import Translation.Translator;
import Utility.RuntimeError;

public class BinaryInstruction extends Instruction {
	public enum BinaryOp {
		ADD, SUB, MUL, DIV, MOD,
		SHL, SHR, AND, OR, XOR,
	}

	public BinaryOp op;
	public Operand target, operand;

	public BinaryInstruction(BinaryOp op, Operand target, Operand operand) {
		this.op = op;
		if (target instanceof ImmediateOperand) {
			throw new RuntimeError("target of binary instruction should be register or address");
		}
		if (target instanceof Address && operand instanceof Address) {
			throw new RuntimeError("binary instruction can't handle two address");
		}
		if (target instanceof Address && (op == BinaryOp.DIV || op == BinaryOp.MOD || op == BinaryOp.SHL || op == BinaryOp.SHR)) {
			throw new RuntimeError("target of div,mod,shl,shr can't be address");
		}
		this.target = target;
		this.operand = operand;
		if (target instanceof VirtualRegister) {
			killSet.add((VirtualRegister) target);
			useSet.add((VirtualRegister) target);
		}
		if (target instanceof Address) {
			useSet.add(((Address) target).base);
		}
		if (operand instanceof VirtualRegister) {
			useSet.add((VirtualRegister) operand);
		}
		if (operand instanceof Address) {
			useSet.add(((Address) operand).base);
		}
	}

	@Override
	public void Prepare() {
		RegisterManager.RegisterStatistics(target);
		RegisterManager.RegisterStatistics(operand);
	}

	@Override
	public String getInstructionOfNASM() {
		String opNASM = op.toString().toLowerCase();
		StringBuilder str = new StringBuilder();
		PhysicalOperand PhysicalSource = PhysicalOperand.get(str, operand);
		PhysicalOperand PhysicalTarget = PhysicalOperand.get(str, target);
		if (opNASM.equals("shl")) {
			if(PhysicalSource instanceof PhysicalImm){
				str.append(Translator.getInstruction("sal", PhysicalTarget.toString(), PhysicalSource.toString()));
			}else {
				str.append(Translator.getInstruction("mov", "rcx", PhysicalSource.toString()));
				str.append(Translator.getInstruction("sal", PhysicalTarget.toString(), "cl"));
			}
			return str.toString();
		}
		if (opNASM.equals("shr")) {

			if(PhysicalSource instanceof PhysicalImm){
				str.append(Translator.getInstruction("sar", PhysicalTarget.toString(), PhysicalSource.toString()));
			}else {
				str.append(Translator.getInstruction("mov", "rcx", PhysicalSource.toString()));
				str.append(Translator.getInstruction("sar", PhysicalTarget.toString(), "cl"));
			}
			return str.toString();
		}
		if (opNASM.equals("mul")) {
			if (PhysicalTarget instanceof PhysicalReg) {
				str.append(Translator.getInstruction("imul", PhysicalTarget.toString(), PhysicalSource.toString()));
			} else {
				str.append(Translator.getInstruction("mov", "rax", PhysicalTarget.toString()));
				str.append(Translator.getInstruction("imul", "rax", PhysicalSource.toString()));
				str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), "rax"));
			}
			return str.toString();
		}
		if (opNASM.equals("div") || opNASM.equals("mod")) {
			str.append(Translator.getInstruction("mov", "rax", PhysicalTarget.toString()));
			str.append(Translator.getInstruction("mov", "rcx", PhysicalSource.toString()));
			str.append(Translator.getInstruction("cqo"));
			str.append(Translator.getInstruction("idiv", "rcx"));
			if (opNASM.equals("div")) {
				str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), "rax"));
			} else {
				str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), "rdx"));
			}
			return str.toString();
		}
		if (PhysicalSource instanceof PhysicalAdd && PhysicalTarget instanceof PhysicalAdd) {
			str.append(Translator.getInstruction("mov", "rax", PhysicalSource.toString()));
			str.append(Translator.getInstruction(opNASM, PhysicalTarget.toString(), "rax"));
		} else {
			str.append(Translator.getInstruction(opNASM, PhysicalTarget.toString(), PhysicalSource.toString()));
		}
		return str.toString();
	}

	@Override
	public String toString() {
		return String.format("%s = %s %s", target, op, operand);
	}
}
