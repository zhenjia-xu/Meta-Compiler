package IR.Instruction;

import IR.Address;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Translation.PhysicalOperand.PhysicalAdd;
import Translation.PhysicalOperand.PhysicalOperand;
import Translation.Translator;
import Utility.RuntimeError;

import java.util.HashSet;

public class MoveInstruction extends Instruction {
	public Operand target;
	public Operand source;

	public MoveInstruction(Operand target, Operand source) {
		if (target instanceof Address && source instanceof Address) {
			throw new RuntimeError("move instruction can't handle two Address");
		}
		this.target = target;
		this.source = source;
		calc();
	}
	private void calc(){
		killSet = new HashSet<>();
		useSet = new HashSet<>();
		if (target instanceof VirtualRegister) {
			killSet.add((VirtualRegister) target);
		}
		if (target instanceof Address) {
			useSet.add(((Address) target).base);
		}
		if (source instanceof VirtualRegister) {
			useSet.add((VirtualRegister) source);
		}
		if (source instanceof Address) {
			useSet.add(((Address) source).base);
		}
	}
	public void changeTarget(Operand target){
		this.target = target;
		calc();
	}

	@Override
	public void Prepare() {
		RegisterManager.RegisterStatistics(target);
		RegisterManager.RegisterStatistics(source);
	}

	@Override
	public void merge(VirtualRegister x, VirtualRegister y){
		if(target instanceof VirtualRegister && target == x){
			target = y;
		}
		if(target instanceof Address && ((Address) target).base == x){
			((Address) target).base = y;
		}
		if(source instanceof VirtualRegister && source == x){
			source = y;
		}
		if(source instanceof Address && ((Address) source).base == x){
			((Address) source).base = y;
		}
	}

	@Override
	public String getInstructionOfNASM() {
		StringBuilder str = new StringBuilder();
		PhysicalOperand PhysicalSource = PhysicalOperand.get(str, source);
		PhysicalOperand PhysicalTarget = PhysicalOperand.get(str, target);

		if (PhysicalSource instanceof PhysicalAdd && PhysicalTarget instanceof PhysicalAdd) {
			str.append(Translator.getInstruction("mov", "rax", PhysicalSource.toString()));
			str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), "rax"));
		} else {
			str.append(Translator.getInstruction("mov", PhysicalTarget.toString(), PhysicalSource.toString()));
		}
		return str.toString();
	}

	@Override
	public String toString() {
		return String.format("%s = move %s", target, source);
	}
}
