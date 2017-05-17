package IR;

public class AllocateInstruction extends Instruction{
	private VirtualRegister target;
	private Operand allocateSize;

	public AllocateInstruction(VirtualRegister target, Operand allocateSize){
		this.target = target;
		this.allocateSize = allocateSize;
	}

	@Override
	public String toString(){
		return String.format("allocate %s %s", target, allocateSize);
	}
}
