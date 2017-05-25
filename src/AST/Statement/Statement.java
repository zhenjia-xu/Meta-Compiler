package AST.Statement;

import IR.Instruction.Instruction;

import java.util.List;

public abstract class Statement {
	public abstract String toString(int indents);

	public abstract void generateInstruction(List<Instruction> instructionList);
}
