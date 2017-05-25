package AST.Expression;

import AST.Type.Type;
import IR.Instruction.Instruction;
import IR.Operand;

import java.util.List;

public abstract class Expression {
	private Type type;
	private boolean leftValue;
	public Operand operand;

	public Expression(Type type, boolean leftValue) {
		this.type = type;
		this.leftValue = leftValue;
	}

	public Type getType() {
		return type;
	}

	public boolean getLeftValue() {
		return leftValue;
	}

	public abstract String toString(int indents);

	public abstract void generateInstruction(List<Instruction> instructionList);
}
