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
			if (xx.realRegister != null) {
				return new PhysicalReg(xx.realRegister);
			} else {
				return new PhysicalAdd("rbp", -(xx.id) * 8);
				//need to change******* + 2
			}
		}
		if (x instanceof Address) {
			Address xx = (Address) x;
			if (xx.base.realRegister != null) {
				return new PhysicalAdd(xx.base.realRegister, xx.offset.value);
			} else {
				PhysicalAdd newBase = new PhysicalAdd("rbp", -(xx.base.id) * 8);
				//need to change*******
				str.append(Translator.getInstruction("mov", "rcx", newBase.toString()));
				return new PhysicalAdd("rcx", xx.offset.value);
			}
		}
		throw new RuntimeError("get physical operand ERROR");
	}
}
