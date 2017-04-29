package IR;
import Utility.Utility;

public class BinaryInstruction extends Instruction{
	public enum BinaryOp {
		ADD, SUB, MUL, DIV, MOD,
		SHL, SHR, AND, OR, XOR,
		EQ,  NEQ, GR,  GREQ, LE, LEEQ
	}
	public BinaryOp op;
	public Address result;
	public Operand leftOperand, rightOperand;

	public BinaryInstruction(BinaryOp op, Address result, Operand leftOperand, Operand rightOperand){
		this.op = op;
		this.result = result;
		this.leftOperand = leftOperand;
		this.rightOperand = rightOperand;
	}

	@Override
	public String toString(){
		return String.format("%s = %s %s %s", result, op, leftOperand, rightOperand);
	}
}
