package Optimization;

import IR.FunctionIR;
import IR.Instruction.CompareInstruction;
import IR.VirtualRegister;
import Utility.RuntimeError;

import java.util.*;

public class RegisterAllocator {
	static private Map<VirtualRegister, String> registerMap;
	static private List<VirtualRegister> must;
	static private Map<VirtualRegister, Set<VirtualRegister>> edgeMap;
	static private List<String> physicalRegister = new ArrayList<String>() {{
		add("rbx");add("rsi");add("rdi");
		add("r8");add("r9");add("r10");add("r11");
		add("r12");add("r13");add("r14");add("r15");
	}};

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
				for(String name: physicalRegister){
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
				System.out.println(reg + "  " + reg.systemReg);
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
			for (String name : physicalRegister) {
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
