package Optimization;

import IR.Block;
import IR.FunctionIR;
import IR.Instruction.CompareInstruction;
import IR.Instruction.FunctionCallInstruction;
import IR.Instruction.Instruction;
import IR.VirtualRegister;
import Utility.RuntimeError;

import java.util.*;

public class RegisterAllocator {
	static private Map<VirtualRegister, String> registerMap;
	static private List<VirtualRegister> must;
	static private Map<VirtualRegister, Set<VirtualRegister>> edgeMap;
	static public List<String> normalOrder = new ArrayList<String>() {{
		add("rsi");add("rbx");
		add("rdi");add("r12");
		add("r8");add("r13");
		add("r9");add("r14");
		add("r10");add("r15");
		add("r11");
	}};
	static public List<String> leafOrder = new ArrayList<String>() {{
		add("rsi");
		add("rdi");
		add("r8");
		add("r9");
		add("r10");
		add("r11");
		add("rbx");
		add("r12");
		add("r13");
		add("r14");
		add("r15");
	}};
	static public List<String> regOrder;
	static public void allocate(Map<VirtualRegister, Integer> virtualRegisterIntegerMap, Map<VirtualRegister, Set<VirtualRegister>> edgeMap, FunctionIR functionIR) {
		RegisterAllocator.edgeMap = edgeMap;
		List<VirtualRegister> list = new ArrayList<>();
		List<VirtualRegister> listAllocate = new ArrayList<>();
		must = new ArrayList<>();
		for (VirtualRegister reg : virtualRegisterIntegerMap.keySet()) {
			if (functionIR.idMap.containsKey(reg)) {
				continue;
			}
			if (reg.systemReg != null) {
				must.add(reg);
			} else {
				list.add(reg);
			}
		}
		boolean leaf = true;
		for(Block block: functionIR.blockList){
			for(Instruction instruction: block.instructionList){
				if(instruction instanceof FunctionCallInstruction){
					leaf = false;
				}
			}
		}
		regOrder = leaf ? leafOrder : normalOrder;
		list.sort(new Comparator<VirtualRegister>() {
			@Override
			public int compare(VirtualRegister reg1, VirtualRegister reg2) {
				int left = virtualRegisterIntegerMap.get(reg1).intValue();
				int right = virtualRegisterIntegerMap.get(reg2).intValue();
				if (left > right) return -1;
				if (left < right) return 1;
				return 0;
			}
		});
		if(list.size() < 300) {
			for (VirtualRegister reg : list) {
				listAllocate.add(reg);
				if (!coloring(listAllocate)) {
					listAllocate.remove(listAllocate.size() - 1);
				}
			}
			coloring(listAllocate);
		}
		else{
			registerMap = new HashMap<>();
			for (VirtualRegister reg : must) {
				tryColor(reg, reg.systemReg);
			}
			for(VirtualRegister reg: list){
				for(String name: regOrder){
					if(tryColor(reg, name)){
						break;
					}
				}
			}
		}
		functionIR.registerMap = registerMap;
	}

	static private boolean coloring(List<VirtualRegister> list_in) {
		List<VirtualRegister> list = new ArrayList<>(list_in);
		registerMap = new HashMap<>();
		for (VirtualRegister reg : must) {
			if (!tryColor(reg, reg.systemReg)) {
				System.out.print(reg);
				throw new RuntimeError("must_list is error");
			}
		}
		list.sort(new Comparator<VirtualRegister>() {
			@Override
			public int compare(VirtualRegister reg1, VirtualRegister reg2) {
				int left = edgeMap.get(reg1).size();
				int right = edgeMap.get(reg2).size();
				if (left > right) return -1;
				if (left < right) return 1;
				return 0;
			}
		});
		for (VirtualRegister reg : list) {
			boolean flag = false;
			for (String name : regOrder) {
				if (tryColor(reg, name)) {
					flag = true;
					break;
				}
			}
			if (!flag) {
				return false;
			}
		}
		return true;
	}

	static private boolean tryColor(VirtualRegister reg, String name) {
		for (VirtualRegister neighbour : edgeMap.get(reg)) {
			if (registerMap.containsKey(neighbour) && registerMap.get(neighbour).equals(name)) {
				return false;
			}
		}
		registerMap.put(reg, name);
		return true;
	}
}
