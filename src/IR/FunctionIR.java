package IR;

import AST.Statement.BlockStatement;
import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import AST.Type.VoidType;
import Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class FunctionIR {
	private FunctionType function;
	private List<Address> parameterAddressList;
	private List<Block> blockList;
	public LabelInstruction enterBlock, exitBlock;

	public FunctionIR(FunctionType function){
		this.function = function;
		parameterAddressList = new ArrayList<>();
		for(Symbol x: function.getParameterList()){
			parameterAddressList.add(x.address);
		}
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

		blockList = new ArrayList<>();
		for(int i = 0, j; i < instructionList.size(); i = j){
			LabelInstruction label = (LabelInstruction)instructionList.get(i);
			Block block = new Block(this, label.getName(), blockList.size());
			for(j = i + 1; j < instructionList.size(); j++){
				Instruction instruction = instructionList.get(j);
				if(instruction instanceof LabelInstruction) break;
				block.add(instruction);
			}
			label.block = block;
			blockList.add(block);
		}
	}

	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents));
		if(function.getReturnType() instanceof VoidType){
			str.append("void ");
		}else{
			str.append("func ");
		}
		str.append(function.getName() + " ");
		for(Address parameter: parameterAddressList){
			str.append(parameter + " ");
		}
		str.append("{\n");
		for(Block block: blockList){
			str.append(block.toString(indents + 1));
		}
		str.append("}\n");
		return str.toString();
	}
}
