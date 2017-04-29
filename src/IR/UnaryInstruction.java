package IR;

public class UnaryInstruction extends Instruction{
	public enum UnaryOp {
		REV, NEG, INC, DEC
	}
	public UnaryOp op;
	public Address result;
	public Operand operand;

	public UnaryInstruction(UnaryOp op, Address result, Operand operand){
		this.op = op;
		this.result = result;
		this.operand = operand;
	}

	@Override
	public String toString(){
		return String.format("%s = %s %s", result, op, operand);
	}
}
