package IR;

public class BinaryInstruction extends Instruction{
	public enum BinaryOp {
		ADD, SUB, MUL, DIV, MOD,
		SHL, SHR, AND, OR, XOR,
		EQ,  NEQ, GR,  GREQ, LE, LEEQ
	}
	public BinaryOp op;
	public Location result;
	public Operand leftOperand, rightOperand;

	public BinaryInstruction(BinaryOp op, Location result, Operand leftOperand, Operand rightOperand){
		this.op = op;
		this.result = result;
		this.leftOperand = leftOperand;
		this.rightOperand = rightOperand;
	}
}
