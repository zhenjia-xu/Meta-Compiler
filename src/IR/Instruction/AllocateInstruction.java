package IR.Instruction;

import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;

public class AllocateInstruction extends Instruction {
	private VirtualRegister target;
	private Operand allocateSize;

	public AllocateInstruction(VirtualRegister target, Operand allocateSize){
		this.target = target;
		this.allocateSize = allocateSize;
	}

	@Override
	public void Prepare(){
		RegisterManager.getID(target);
		if(allocateSize instanceof VirtualRegister){
			RegisterManager.getID((VirtualRegister) allocateSize);
		}
	}
	@Override
	public String toString(){
		return String.format("allocate %s %s", target, allocateSize);
	}
}
