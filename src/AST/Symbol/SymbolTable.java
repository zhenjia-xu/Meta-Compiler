package AST.Symbol;

import AST.Type.ClassType;
import AST.Type.FunctionType;
import AST.Statement.LoopStatement;
import Utility.CompilationError;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class SymbolTable {
	private Stack<Scope> scopeStack;
	private FunctionType currentFunction;
	private ClassType currentClass;
	private Stack<LoopStatement> loopStack;
	private Map<String, Stack<Symbol>> symbolMap;
	private Stack<Map<String, Symbol>> temporarySymbolStack;

	public SymbolTable(){
		scopeStack = new Stack<>();
		currentClass = null;
		currentFunction = null;
		loopStack = new Stack<>();
		symbolMap = new HashMap<>();
		temporarySymbolStack = new Stack<>();
	}
	public void enterScope(Scope scope){
		scopeStack.push(scope);
		if(scope instanceof FunctionType){
			currentFunction = (FunctionType)scope;
		}
		if(scope instanceof ClassType){
			currentClass = (ClassType)scope;
		}
		if(scope instanceof LoopStatement){
			loopStack.push((LoopStatement)scope);
		}
		temporarySymbolStack.push(new HashMap<>());
	}
	public void exitScope(){
		Scope scope = scopeStack.peek();
		scopeStack.pop();
		if(scope instanceof FunctionType){
			currentFunction = null;
		}
		if(scope instanceof ClassType){
			currentClass = null;
		}
		if(scope instanceof LoopStatement){
			loopStack.pop();
		}
		temporarySymbolStack.pop().forEach((key, val) -> symbolMap.get(key).pop());
	}
	public void addSymbol(Symbol symbol){
		String name = symbol.getName();
		if(temporarySymbolStack.peek().containsKey(name)){
			throw new CompilationError("The scope can't have two symbols named \"" + name + "\"");
		}
		if(!symbolMap.containsKey(name)){
			symbolMap.put(name, new Stack<>());
		}
		temporarySymbolStack.peek().put(name, symbol);
		symbolMap.get(name).push(symbol);
	}
	public boolean haveSymbol(String name){
		return symbolMap.containsKey(name) && !symbolMap.get(name).empty();
	}
	public Symbol getSymbol(String name){
		return symbolMap.get(name).peek();
	}
	public Scope getCurrentScope(){
		if(scopeStack.empty()){
			return null;
		}else {
			return scopeStack.peek();
		}
	}
	public FunctionType getCurrentFunction(){
		return currentFunction;
	}
	public ClassType getCurrentClass(){
		return currentClass;
	}
	public LoopStatement getCurrentLoop(){
		if(loopStack.empty()) return null;
		return loopStack.peek();
	}
}
