package IR;

public class MoveInstruction extends Instruction{
	public Location target;
	public Operand operand;

	public MoveInstruction(Location target, Operand operand){
		this.target = target;
		this.operand = operand;
	}
}
