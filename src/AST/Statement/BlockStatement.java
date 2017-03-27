package AST.Statement;

import AST.Symbol.Scope;
import Utility.Utility;

import java.util.ArrayList;
import java.util.List;

public class BlockStatement extends Statement implements Scope{
	private List<Statement> statementList;

	public BlockStatement(){
		this.statementList = new ArrayList<>();
	}
	public void addStatement(Statement statement){
		statementList.add(statement);
	}
	@Override
	public String toString(){
		return "block statement";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[block statement]\n");
		statementList.forEach(statement ->
			str.append(statement.toString(indents + 1)));
		return str.toString();
	}
}
