package IR;

import AST.Type.FunctionType;

import java.util.ArrayList;
import java.util.List;

public class Block {
	private FunctionGraph functionGraph;
	private String blockName;
	private List<Instruction> instructionList;

	public Block(FunctionGraph functionGraph, String blockName){
		this.functionGraph = functionGraph;
		this.blockName = blockName;
		this.instructionList = new ArrayList<>();
	}
}
