package Translation.PhysicalOperand;

import IR.*;
import Translation.Translator;
import Utility.RuntimeError;

public abstract class PhysicalOperand {
	public static PhysicalOperand get(StringBuilder str, Operand x) {
		if (x instanceof ImmediateOperand) {
			return new PhysicalImm(((ImmediateOperand) x).value);
		}
		if (x instanceof MemoryTag) {
			return new PhysicalTag(((MemoryTag) x).tag);
		}
		if (x instanceof VirtualRegister) {
			VirtualRegister xx = (VirtualRegister) x;
			if (getReg(xx) != null) {
				return new PhysicalReg(getReg(xx));
			} else {
				return new PhysicalAdd("rbp", -getId(xx) * 8);
			}
		}
		if (x instanceof Address) {
			Address xx = (Address) x;
			if (getReg(xx.base) != null) {
				return new PhysicalAdd(getReg(xx.base), xx.offset.value);
			} else {
				PhysicalAdd newBase = new PhysicalAdd("rbp", -getId(xx.base) * 8);
				str.append(Translator.getInstruction("mov", "rcx", newBase.toString()));
				return new PhysicalAdd("rcx", xx.offset.value);
			}
		}
		throw new RuntimeError("get physical operand ERROR");
	}
	static private String getReg(VirtualRegister reg){
		if(reg.systemReg != null){
			return reg.systemReg;
		}
		if(Translator.nowFunction.registerMap.containsKey(reg)){
			return Translator.nowFunction.registerMap.get(reg);
		}
		return null;
	}
	static private int getId(VirtualRegister reg){
		return Translator.nowFunction.idMap.get(reg).intValue();
	}
}
