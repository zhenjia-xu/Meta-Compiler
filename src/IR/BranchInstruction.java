package IR;

public class BranchInstruction extends Instruction{
	private Operand condition;
	private LabelInstruction trueTarget, falseTarget;

	public BranchInstruction(Operand condition, LabelInstruction trueTarget, LabelInstruction falseTarget){
		this.condition = condition;
		this.trueTarget = trueTarget;
		this.falseTarget = falseTarget;
	}
	@Override
	public String toString(){
		return String.format("branch %s %s %s", condition, trueTarget.block, falseTarget.block);
	}
}
