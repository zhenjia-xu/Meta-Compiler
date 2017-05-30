package Optimization;

import IR.Block;
import IR.FunctionIR;
import IR.Instruction.FunctionCallInstruction;
import IR.Instruction.Instruction;
import IR.VirtualRegister;
import Utility.RuntimeError;
import com.sun.org.apache.regexp.internal.RE;

import java.util.*;

public class RegisterAllocator {
	static private Map<VirtualRegister, String> registerMap;
	static private List<VirtualRegister> must;
	static private Map<VirtualRegister, Set<VirtualRegister>> conflictEdgeMap;
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
	static public void naiveAllocate(Map<VirtualRegister, Integer> virtualRegisterMap, Map<VirtualRegister, Set<VirtualRegister>> conflictEdgeMap, FunctionIR functionIR) {
		RegisterAllocator.conflictEdgeMap = conflictEdgeMap;
		List<VirtualRegister> list = new ArrayList<>();
		List<VirtualRegister> listAllocate = new ArrayList<>();
		must = new ArrayList<>();
		for (VirtualRegister reg : virtualRegisterMap.keySet()) {
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
				int left = virtualRegisterMap.get(reg1).intValue();
				int right = virtualRegisterMap.get(reg2).intValue();
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
				int left = conflictEdgeMap.get(reg1).size();
				int right = conflictEdgeMap.get(reg2).size();
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
		for (VirtualRegister neighbour : conflictEdgeMap.get(reg)) {
			if (registerMap.containsKey(neighbour) && registerMap.get(neighbour).equals(name)) {
				return false;
			}
		}
		registerMap.put(reg, name);
		return true;
	}

	public static class Move{
		public VirtualRegister u, v;   //   u <- v
		public Move(VirtualRegister uu, VirtualRegister vv){
			u = uu;
			v = vv;
		}
	}
	static private Set<VirtualRegister> simplifyWorklist, freezeWorklist, spillWorklist, coalescedNodes;
	static private Set<Move> worklistMoves, activeMoves, coalescedMoves, constrainedMoves, frozenMoves;
	static private Map<VirtualRegister, Set<Move>> moveList;
	static private Map<VirtualRegister, VirtualRegister> alias;
	static private Stack<VirtualRegister> selectStack;
	static private int K = normalOrder.size();
	static public void advancedAllocate(Map<VirtualRegister, Integer> virtualRegisterMap, Map<VirtualRegister, Set<VirtualRegister>> conflictEdgeMap, Map<VirtualRegister, Set<VirtualRegister>> moveEdgeMap, FunctionIR functionIR){
		moveEdgeMap = new HashMap<>();
		boolean leaf = true;
		for(Block block: functionIR.blockList){
			for(Instruction instruction: block.instructionList){
				if(instruction instanceof FunctionCallInstruction){
					leaf = false;
				}
			}
		}
		regOrder = leaf ? leafOrder : normalOrder;
		RegisterAllocator.conflictEdgeMap = new HashMap<>();
		for(VirtualRegister x: conflictEdgeMap.keySet()){
			RegisterAllocator.conflictEdgeMap.put(x, new HashSet<>());
			for(VirtualRegister y: conflictEdgeMap.get(x)){
				RegisterAllocator.conflictEdgeMap.get(x).add(y);
			}
		}
		simplifyWorklist = new HashSet<>();
		freezeWorklist = new HashSet<>();
		spillWorklist = new HashSet<>();
		coalescedNodes = new HashSet<>();

		worklistMoves = new HashSet<>();
		activeMoves = new HashSet<>();
		coalescedMoves = new HashSet<>();
		constrainedMoves = new HashSet<>();
		frozenMoves = new HashSet<>();

		moveList = new HashMap<>();
		alias = new HashMap<>();
		selectStack = new Stack<>();
		for(VirtualRegister reg: virtualRegisterMap.keySet()){
			moveList.put(reg, new HashSet<>());
			if(reg.systemReg == null) {
				if (conflictEdgeMap.get(reg).size() >= K) {
					spillWorklist.add(reg);
				} else if (MoveRelated(reg)) {
					freezeWorklist.add(reg);
				} else {
					simplifyWorklist.add(reg);
				}
			}
		}
		for(VirtualRegister target: moveEdgeMap.keySet()){
			for(VirtualRegister source: moveEdgeMap.get(target)){
				Move mo = new Move(target, source);
				moveList.get(target).add(mo);
				moveList.get(source).add(mo);
				worklistMoves.add(mo);
			}
		}
		while(simplifyWorklist.size() > 0 || freezeWorklist.size() > 0 || spillWorklist.size() > 0 || worklistMoves.size() > 0){
			if(simplifyWorklist.size() > 0){
				Simplify();
			}else if(worklistMoves.size() > 0){
				Coalesce();
			}else if(freezeWorklist.size() > 0){
				Freeze();
			}else if(spillWorklist.size() > 0){
				SelectSpill();
			}
		}
		RegisterAllocator.conflictEdgeMap = conflictEdgeMap;
		registerMap = new HashMap<>();
		for(VirtualRegister reg: virtualRegisterMap.keySet()){
			if(reg.systemReg != null){
				tryColor(reg, reg.systemReg);
			}
		}
		while(!selectStack.empty()){
			VirtualRegister reg = selectStack.pop();
			for(String name: regOrder){
				if(tryColor(reg, name)){
					break;
				}
			}
		}
		for(VirtualRegister n: coalescedNodes){
			if(!tryColor(n, registerMap.get(GetAlias(n)))){
				throw new RuntimeError("Coalesces color ERROR");
			}
		}
		functionIR.registerMap = registerMap;
	}

	static private void Simplify(){
		VirtualRegister n = SelectOneVR(simplifyWorklist);
		selectStack.push(n);
		for(Iterator<VirtualRegister> it = conflictEdgeMap.get(n).iterator(); it.hasNext();){
			VirtualRegister m = it.next();
			it.remove();
			DecrementDegree(m);
		}
	}

	static private void Coalesce(){
		Move m = SelectOneMove(worklistMoves);
		m.u = GetAlias(m.u);
		m.v = GetAlias(m.v);
		VirtualRegister u, v;
		if(m.u.systemReg != null){
			u = m.u;
			v = m.v;
		}else{
			u = m.v;
			v = m.u;
		}
		if(u == v){
			coalescedMoves.add(m);
			AddWorklist(u);
		}else if(v.systemReg != null && conflictEdgeMap.get(u).contains(v)){
			constrainedMoves.add(m);
			AddWorklist(u);
			AddWorklist(v);
		} else{
			boolean flag = true;
			for(VirtualRegister t: conflictEdgeMap.get(v)){
				flag &= OK(t, u);
			}
			if(u.systemReg != null && flag || u.systemReg == null && Conservative(merge(conflictEdgeMap.get(u), conflictEdgeMap.get(v)))){
				coalescedMoves.add(m);
				Combine(u, v);
				AddWorklist(u);
			}else {
				activeMoves.add(m);
			}
		}
	}

	static private void Combine(VirtualRegister u, VirtualRegister v){
		//  (u,v) -> u
		if(freezeWorklist.contains(v)){
			freezeWorklist.remove(v);
		}else{
			spillWorklist.remove(v);
		}
		coalescedNodes.add(v);
		alias.put(v, u);
		for(Move move: moveList.get(v)){
			moveList.get(u).add(move);
		}
		EnableMoves(v);
		for(Iterator<VirtualRegister> it = conflictEdgeMap.get(v).iterator(); it.hasNext();){
			VirtualRegister t = it.next();
			it.remove();
			conflictEdgeMap.get(t).add(v);
			addConflictEdge(t, u);
			DecrementDegree(t);
		}
		if(conflictEdgeMap.get(u).size() >= K && freezeWorklist.contains(u)){
			freezeWorklist.remove(u);
			spillWorklist.add(u);
		}
	}

	static private Set<VirtualRegister> merge(Set<VirtualRegister> s1, Set<VirtualRegister> s2){
		Set<VirtualRegister> s = new HashSet<>();
		for(VirtualRegister x: s1){
			s.add(x);
		}
		for(VirtualRegister x: s2){
			s.add(x);
		}
		return s;
	}

	static private void Freeze(){
		VirtualRegister u = SelectOneVR(freezeWorklist);
		simplifyWorklist.add(u);
		FreezeMoves(u);
	}

	static private void SelectSpill(){
		VirtualRegister m = SelectOneVR(spillWorklist);
		simplifyWorklist.add(m);
		FreezeMoves(m);
	}

	static private void FreezeMoves(VirtualRegister u){
		for(Move m: moveList.get(u)){
			if(activeMoves.contains(m)){
				activeMoves.remove(m);
				frozenMoves.add(m);
				VirtualRegister v;
				if(GetAlias(m.u) == GetAlias(u)){
					v = GetAlias(m.v);
				}else{
					v = GetAlias(m.u);
				}
				if(freezeWorklist.contains(v) && !MoveRelated(v)){
					freezeWorklist.remove(v);
					simplifyWorklist.add(v);
				}
			}
		}
	}

	static private VirtualRegister GetAlias(VirtualRegister n){
		if(alias.containsKey(n)){
			VirtualRegister m = GetAlias(alias.get(n));
			alias.put(n, m);
			return m;
		}
		return n;
	}

	static private void AddWorklist(VirtualRegister u){
		if(u.systemReg == null && !MoveRelated(u) && conflictEdgeMap.get(u).size() < K){
			freezeWorklist.remove(u);
			simplifyWorklist.add(u);
		}
	}

	static private boolean OK(VirtualRegister t, VirtualRegister r){
		return conflictEdgeMap.get(t).size() < K || t.systemReg != null || conflictEdgeMap.get(t).contains(r);
	}

	static private boolean Conservative(Set<VirtualRegister> nodes){
		int k = 0;
		for(VirtualRegister n: nodes){
			if(conflictEdgeMap.get(n).size() >= K){
				k++;
			}
		}
		return k < K;
	}

	static private void DecrementDegree(VirtualRegister m){
		if(conflictEdgeMap.get(m).size() == K - 1){
			EnableMoves(m);
			for(VirtualRegister reg: conflictEdgeMap.get(m)){
				EnableMoves(reg);
			}
			spillWorklist.remove(m);
			if(MoveRelated(m)){
				freezeWorklist.add(m);
			}else{
				simplifyWorklist.add(m);
			}
		}
	}

	static private void EnableMoves(VirtualRegister n){
		for(Move move: moveList.get(n)){
			if(activeMoves.contains(move)){
				activeMoves.remove(move);
				worklistMoves.remove(move);
			}
		}
	}

	static private boolean MoveRelated(VirtualRegister n){
		for(Move move: moveList.get(n)){
			if(activeMoves.contains(move) || worklistMoves.contains(move)){
				return true;
			}
		}
		return false;
	}

	static private VirtualRegister SelectOneVR(Set<VirtualRegister> set){
		for(VirtualRegister reg: set){
			set.remove(reg);
			return reg;
		}
		throw new RuntimeError("Can't find element(VirtualRegister)");
	}

	static private Move SelectOneMove(Set<Move> set){
		for(Move move: set){
			set.remove(move);
			return move;
		}
		throw new RuntimeError("Can't find element(Move)");
	}

	static private void addConflictEdge(VirtualRegister x, VirtualRegister y) {
		if(x == y){
			return;
		}
		conflictEdgeMap.get(x).add(y);
		conflictEdgeMap.get(y).add(x);
	}
}
