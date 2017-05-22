package IR.Instruction;

import IR.*;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.PhysicalOperand.PhysicalReg;
import Translation.Translator;
import Utility.RuntimeError;

public class CsetInstruction extends Instruction {
	public ProgramIR.ConditionOp op;
	public VirtualRegister target;

	public CsetInstruction(ProgramIR.ConditionOp op, Operand target){
		this.op = op;
		if(!(target instanceof VirtualRegister)){
			throw new RuntimeError("target of set instruction should be register");
		}
		this.target = (VirtualRegister) target;
	}
	@Override
	public void Prepare(){
		RegisterManager.MemRegisterGetOffset(target);
	}
	@Override
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		PhysicalOperand physicalTarget = PhysicalOperand.get(str, target);
		if (target.id != 0) {
			str.append(Translator.getInstruction("mov", "r15", physicalTarget.toString()));
			str.append(Translator.getInstruction("mov", "r15", "0"));
			str.append(Translator.getInstruction("set" + Translator.getNASMofCondition(op), "r15b"));
			str.append(Translator.getInstruction("mov", physicalTarget.toString(), "r15"));
		} else {
			if(!(physicalTarget instanceof PhysicalReg)){
				throw new RuntimeError("Cset getInstructionOfNASM ERROR");
			}
			str.append(Translator.getInstruction("mov", physicalTarget.toString(), "0"));
			str.append(Translator.getInstruction("set" + Translator.getNASMofCondition(op), physicalTarget.toString() + "b"));
		}
		return str.toString();
	}
	@Override
	public String toString(){
		return String.format("set %s %s", op, target);
	}
}
