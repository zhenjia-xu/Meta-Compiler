package IR;

public class MoveInstruction extends Instruction{
	public VirtualRegister target;
	public Operand operand;

	public MoveInstruction(VirtualRegister target, Operand operand){
		this.target = target;
		this.operand = operand;
	}
}
