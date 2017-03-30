package AST.Type;

import Utility.CompilationError;
import Utility.Utility;

import java.util.HashMap;
import java.util.Map;

public class FunctionTable{
	private Map<String, FunctionType> functionMap;
	public FunctionTable(){
		functionMap = new HashMap<>();
	}
	public Map<String, FunctionType> getFunctionMap(){
		return functionMap;
	}
	public void addFunction(FunctionType functionType){
		String functionName = functionType.getName();
		if(functionMap.containsKey(functionName)){
			throw new CompilationError("This scope can't have two functions named \"" + functionName +"\"");
		}
		functionMap.put(functionName, functionType);
	}
	public FunctionType getFunctionType(String functionName){
		return functionMap.get(functionName);
	}
	@Override
	public String toString(){
		return "function table";
	}
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[function table]\n");
		for(FunctionType function: functionMap.values()){
			if(function.getBlockStatement() != null){
				str.append(function.toString(indents + 1));
			}
		}
		return str.toString();
	}
}
