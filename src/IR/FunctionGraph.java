package IR;

import AST.Type.FunctionType;

import java.util.ArrayList;
import java.util.List;

public class FunctionGraph {
	private FunctionType function;
	private List<VirtualRegister> parameterRegisterList;
	public LabelInstruction enterBlock, exitBlock;

	public FunctionGraph(FunctionType function){
		this.function = function;
		buildGraph();
	}
	public String getName(){
		return function.getName();
	}
	private void buildGraph(){
		enterBlock = new LabelInstruction("enter");
		exitBlock = new LabelInstruction("exit");
		function.enterLabel = enterBlock;
		function.exitLabel = exitBlock;

		List<Instruction> instructionList = new ArrayList<>();
		instructionList.add(enterBlock);
		function.getBlockStatement().generateInstruction(instructionList);
		instructionList.add(exitBlock);
	}
}
