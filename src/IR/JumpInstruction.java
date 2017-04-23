package IR;

public class JumpInstruction extends Instruction{
	private LabelInstruction target;

	public JumpInstruction(LabelInstruction target){
		this.target = target;
	}
	public LabelInstruction getTarget(){
		return target;
	}
}
