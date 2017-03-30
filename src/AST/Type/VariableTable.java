package AST.Type;

import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Symbol;
import Utility.CompilationError;
import Utility.Utility;

import java.util.HashMap;
import java.util.Map;

public class VariableTable{
	private Map<String, VariableDeclarationStatement> variableMap;

	public VariableTable(){
		variableMap = new HashMap<>();
	}
	public Map<String, VariableDeclarationStatement> getVariableMap(){
		return variableMap;
	}
	public void addVariable(VariableDeclarationStatement variable){
		String variableName = variable.getName();
		if(variableMap.containsKey(variableName)){
			throw new CompilationError("This scope can't have two variables named " + variableName);
		}
		variableMap.put(variableName, variable);
	}
	public VariableDeclarationStatement getVariable(String name){
		return variableMap.get(name);
	}
	@Override
	public String toString(){
		return "variable table";
	}
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[variable table]\n");
		variableMap.forEach((name, variable) ->
				str.append(variable.toString(indents + 1)));
		return str.toString();
	}
}
