package IR;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import IR.Instruction.LabelInstruction;
import Utility.Utility;

public class Block {
	private FunctionIR functionIR;
	private String blockName;
	private int id;
	public LabelInstruction labelInstruction;
	public List<Instruction> instructionList;
	public Set<VirtualRegister> useSet, killSet, liveIn, liveOut;
	public Set<Block> blockIn, blockOut;
	private boolean haveJump;

	public Block(FunctionIR functionGraph, String blockName, int id, LabelInstruction labelInstruction) {
		this.functionIR = functionGraph;
		this.blockName = blockName;
		this.id = id;
		this.instructionList = new ArrayList<>();
		this.labelInstruction = labelInstruction;
		this.useSet = new HashSet<>();
		this.killSet = new HashSet<>();
		this.liveIn = new HashSet<>();
		this.liveOut = new HashSet<>();
		this.blockIn = new HashSet<>();
		this.blockOut = new HashSet<>();
		this.haveJump = false;
	}

	public void add(Instruction instruction) {
		if (haveJump) {
			return;
		}
		instructionList.add(instruction);
		if (instruction instanceof JumpInstruction) {
			haveJump = true;
		}
	}

	public String getName() {
		return String.format("%s.%d.%s", functionIR.getName(), id, blockName);
	}

	@Override
	public String toString() {
		return String.format("%s.%d.%s", functionIR.getName(), id, blockName);
	}

	public String toString(int indents) {
		StringBuilder str = new StringBuilder(Utility.getIndent(indents) + String.format("%s.%d.%s:\n", functionIR.getName(), id, blockName));
		for (Instruction instruction : instructionList) {
			str.append(instruction.toString(indents + 1));
		}
		return str.toString();
	}
}
