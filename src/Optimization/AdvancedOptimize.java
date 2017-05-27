package Optimization;

import IR.*;
import IR.Instruction.*;
import org.omg.PortableInterceptor.INACTIVE;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AdvancedOptimize {
	static public Set<Instruction> useful;
	static public Map<Instruction, Set<VirtualRegister>> importantOperandIn, importantOperandOut;
	static public void uselessCodeElimination(FunctionIR functionIR){
		for(Block block: functionIR.blockList){
			if(block.instructionList.size() > 1000){
				return;
			}
		}
		useful = new HashSet<>();
		importantOperandIn = new HashMap<>();
		importantOperandOut = new HashMap<>();
		useful.add(functionIR.enterBlock);
		useful.add(functionIR.exitBlock);
		for(Block block: functionIR.blockList){
			importantOperandIn.put(block.labelInstruction, new HashSet<>());
			importantOperandOut.put(block.labelInstruction, new HashSet<>());
			for(Instruction instruction: block.instructionList){
				importantOperandIn.put(instruction, new HashSet<>());
				importantOperandOut.put(instruction, new HashSet<>());
				if(instruction instanceof FunctionCallInstruction){
					useful.add(instruction);
					emit(instruction);
				}
				if(instruction instanceof ReturnInstruction){
					useful.add(instruction);
					emit(instruction);
				}
				if(instruction instanceof MoveInstruction){
					Operand target = ((MoveInstruction) instruction).target;
					if(target instanceof Address || (target instanceof VirtualRegister && ((VirtualRegister) target).realRegister != null)) {
						useful.add(instruction);
						emit(instruction);
					}
				}
				if(instruction instanceof BinaryInstruction){
					Operand target = ((BinaryInstruction) instruction).target;
					if(target instanceof Address || (target instanceof VirtualRegister && ((VirtualRegister) target).realRegister != null)) {
						useful.add(instruction);
						emit(instruction);
					}
				}
				if(instruction instanceof UnaryInstruction){
					Operand target = ((UnaryInstruction) instruction).target;
					if(target instanceof Address || (target instanceof VirtualRegister && ((VirtualRegister) target).realRegister != null)) {
						useful.add(instruction);
						emit(instruction);
					}
				}
			}
		}
		boolean flag = true;
		while(flag) {
			flag = false;
			for (Block block: functionIR.blockList){
				for(int i = block.instructionList.size() - 1; i >= 0; i--){
					flag |= calc(block.instructionList.get(i), (i + 1 < block.instructionList.size()) ? block.instructionList.get(i + 1) : null, block.labelInstruction.getName());
				}
				flag |= calc(block.labelInstruction, block.instructionList.isEmpty() ? null: block.instructionList.get(0), block.labelInstruction.getName());
			}
		}
/*
		for(Block block: functionIR.blockList){
			System.out.println(useful.contains(block.labelInstruction) + "   " + block.getName() + "  " + importantOperandIn.get(block.labelInstruction));
			for(Instruction instruction: block.instructionList){
				System.out.println("    " + useful.contains(instruction) + "    " + instruction + "  " + importantOperandIn.get(instruction));
			}
		}
*/
		for(int i = 0; i < functionIR.blockList.size(); i++){
			Block block = functionIR.blockList.get(i);
			for(int j = 0; j < block.instructionList.size(); j++){
				if(!useful.contains(block.instructionList.get(j)) && !(block.instructionList.get(j) instanceof JumpInstruction)){
					block.instructionList.remove(j);
					j--;
				}
			}
		}
	}
	static public boolean calc(Instruction instruction, Instruction next, String labelName){
		int sizeIn = importantOperandIn.get(instruction).size();
		int sizeOut = importantOperandOut.get(instruction).size();
		int usefulSize = useful.size();
		if(instruction instanceof JumpInstruction){
			setUnion(importantOperandOut.get(instruction), importantOperandIn.get(((JumpInstruction) instruction).target));
		}else{
			if(next != null){
				setUnion(importantOperandOut.get(instruction), importantOperandIn.get(next));
			}
			if(instruction instanceof CjumpInstruction){
				setUnion(importantOperandOut.get(instruction), importantOperandIn.get(((CjumpInstruction) instruction).target));
			}
		}
		if(instruction instanceof LabelInstruction){
			setUnion(importantOperandIn.get(instruction), importantOperandOut.get(instruction));
			for(Instruction x: ((LabelInstruction) instruction).block.instructionList){
				if(useful.contains(x)){
					useful.add(instruction);
				}
			}
		}else//Jump, Cjump
			if(instruction instanceof JumpInstruction || instruction instanceof CjumpInstruction || instruction instanceof LabelInstruction){
				setUnion(importantOperandIn.get(instruction), importantOperandOut.get(instruction));
				if(instruction instanceof JumpInstruction && useful.contains(((JumpInstruction) instruction).target) && !labelName.equals("loop_condition")){
					useful.add(instruction);
				}
				if(instruction instanceof CjumpInstruction && useful.contains(((CjumpInstruction) instruction).target)){
					useful.add(instruction);
				}
			}else//Cmp
				if(instruction instanceof CompareInstruction){
					setUnion(importantOperandIn.get(instruction), importantOperandOut.get(instruction));
					if (useful.contains(next)) {
						useful.add(instruction);
						emit(instruction);
					}
				}else{//Allocate, Binary, Cset, FunctionCall, Move, Return, Unary
					for(VirtualRegister reg: importantOperandOut.get(instruction)){
						if(instruction.killSet.contains(reg)){
							useful.add(instruction);
							emit(instruction);
						}else{
							importantOperandIn.get(instruction).add(reg);
						}
					}
				}
		if (importantOperandIn.get(instruction).size() != sizeIn) return true;
		if (importantOperandOut.get(instruction).size() != sizeOut) return true;
		if (useful.size() != usefulSize) return true;
		return false;
	}
	static public void emit(Instruction instruction){
		for(VirtualRegister reg: instruction.useSet){
			importantOperandIn.get(instruction).add(reg);
		}
	}
	//   A = A + B
	static private void setUnion(Set<VirtualRegister> A, Set<VirtualRegister> B) {
		for (VirtualRegister reg : B) {
			A.add(reg);
		}
	}
}