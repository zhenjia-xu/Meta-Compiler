package IR.Instruction;

import IR.VirtualRegister;
import Utility.Utility;

import java.util.HashSet;
import java.util.Set;

public abstract class Instruction {
	public Set<VirtualRegister> useSet, killSet, liveIn, liveOut;

	public Instruction() {
		useSet = new HashSet<>();
		killSet = new HashSet<>();
		liveIn = new HashSet<>();
		liveOut = new HashSet<>();
	}

	public String toString(int indents) {
		return Utility.getIndent(indents) + this.toString() + "\n";
	}

	public abstract void Prepare();

	public abstract void merge(VirtualRegister target, VirtualRegister source);

	public abstract String getInstructionOfNASM();
}
