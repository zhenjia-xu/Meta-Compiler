package Optimization;

import IR.Block;
import IR.FunctionIR;
import IR.Instruction.CjumpInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.JumpInstruction;
import IR.Instruction.MoveInstruction;
import IR.VirtualRegister;
import Utility.RuntimeError;
import com.sun.org.apache.regexp.internal.RE;
import org.omg.PortableInterceptor.INACTIVE;

import java.awt.image.VolatileImage;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LivenessAnalysis {
	static public Map<VirtualRegister, Set<VirtualRegister>> edgeMap;
	static public Map<VirtualRegister, Integer> virtualRegisterMap;

	static public void analysis(FunctionIR functionIR) {
		edgeMap = new HashMap<>();
		virtualRegisterMap = new HashMap<>();
		prepare(functionIR);
		calculateBlock(functionIR);
		calculateInstruction(functionIR);
	}

	static private void calculateInstruction(FunctionIR functionIR) {
		for (Block block : functionIR.blockList) {
			for (int i = block.instructionList.size() - 1; i >= 0; i--) {
				Instruction instruction = block.instructionList.get(i);
				if (instruction instanceof JumpInstruction) {
					if (i != block.instructionList.size() - 1) {
						throw new RuntimeError("calculate instruction - Jump ERROR");
					}
					instruction.liveOut = new HashSet<>(((JumpInstruction) instruction).target.block.liveIn);
				} else if (instruction instanceof CjumpInstruction) {
					if (i != block.instructionList.size() - 2) {
						throw new RuntimeError("calculate instruction - Cjump ERROR");
					}
					instruction.liveOut = new HashSet<>(((CjumpInstruction) instruction).target.block.liveIn);
					JumpInstruction jump = (JumpInstruction) block.instructionList.get(i + 1);
					setUnion(instruction.liveOut, jump.liveIn);
				} else {
					if (i < block.instructionList.size() - 1) {
						instruction.liveOut = new HashSet<>(block.instructionList.get(i + 1).liveIn);
					}
				}
				calcLiveIn(instruction);

				if (instruction instanceof MoveInstruction) {
					for (VirtualRegister reg1 : instruction.killSet)
						for (VirtualRegister reg2 : instruction.liveOut) {
							if (!(((MoveInstruction) instruction).source instanceof VirtualRegister) || !instruction.useSet.contains(reg2)) {
								addEdge(reg1, reg2);
							}
						}
				} else {
					for (VirtualRegister reg1 : instruction.killSet)
						for (VirtualRegister reg2 : instruction.liveOut) {
							addEdge(reg1, reg2);
						}
				}
//				for(VirtualRegister reg1: instruction.liveOut)
//					for(VirtualRegister reg2: instruction.liveOut)
//						if(reg1 != reg2 && reg1.systemReg == null && reg2.systemReg == null){
//							addEdge(reg1, reg2);
//						}
			}
		}
	}

	static private void calculateBlock(FunctionIR functionIR) {
		boolean flag = true;
		while (flag) {
			flag = false;
			for (Block block : functionIR.blockList) {
				for (Block succ : block.blockOut) {
					flag |= setUnion(block.liveOut, succ.liveIn);
				}
				calcLiveIn(block);
			}
		}
	}

	static private void prepare(FunctionIR functionIR) {
		for (Block block : functionIR.blockList) {
			Set<VirtualRegister> assignedSet = new HashSet<>();
			for (Instruction instruction : block.instructionList) {
				Set<VirtualRegister> useSet = instruction.useSet;
				Set<VirtualRegister> killSet = instruction.killSet;
				mapUnion(virtualRegisterMap, useSet);
				mapUnion(virtualRegisterMap, killSet);
				for (VirtualRegister reg : useSet) {
					if (!assignedSet.contains(reg) && !block.useSet.contains(reg)) {
						block.useSet.add(reg);
					}
				}
				setUnion(assignedSet, killSet);
				setUnion(block.killSet, killSet);
				if (instruction instanceof JumpInstruction) {
					addEdge(block, ((JumpInstruction) instruction).target.block);
				}
				if (instruction instanceof CjumpInstruction) {
					addEdge(block, ((CjumpInstruction) instruction).target.block);
				}
			}
		}
		for (Block block : functionIR.blockList) {
			calcLiveIn(block);
		}
	}

	static private void calcLiveIn(Block block) {
		block.liveIn = new HashSet<>(block.useSet);
		for (VirtualRegister reg : block.liveOut) {
			if (!block.killSet.contains(reg) && !block.liveIn.contains(reg)) {
				block.liveIn.add(reg);
			}
		}
	}

	static private void calcLiveIn(Instruction instruction) {
		instruction.liveIn = new HashSet<>(instruction.useSet);
		for (VirtualRegister reg : instruction.liveOut) {
			if (!instruction.killSet.contains(reg) && !instruction.liveIn.contains(reg)) {
				instruction.liveIn.add(reg);
			}
		}
	}

	static private void addEdge(Block from, Block to) {
		from.blockOut.add(to);
		to.blockIn.add(from);
	}

	static private void addEdge(VirtualRegister x, VirtualRegister y) {
		if (x == y) return;
		edgeMap.get(x).add(y);
		edgeMap.get(y).add(x);
	}

	//   A = A + B
	static private boolean setUnion(Set<VirtualRegister> A, Set<VirtualRegister> B) {
		boolean flag = false;
		for (VirtualRegister reg : B) {
			if (!A.contains(reg)) {
				flag = true;
				A.add(reg);
			}
		}
		return flag;
	}

	static private void mapUnion(Map<VirtualRegister, Integer> A, Set<VirtualRegister> B) {
		for (VirtualRegister reg : B) {
			if (!A.containsKey(reg)) {
				A.put(reg, new Integer(0));
				edgeMap.put(reg, new HashSet<>());
			}
			int now = A.get(reg).intValue();
			A.put(reg, new Integer(now + 1));
		}
	}
}
