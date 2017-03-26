package AST.Statement;

import AST.Environment;
import Utility.Utility;
import Utility.CompilationError;

public class ContinueStatement extends Statement{
	private LoopStatement loopStatement;

	public ContinueStatement(){
		LoopStatement loopStatement = Environment.symbolTable.getCurrentLoop();
		if(loopStatement == null){
			throw new CompilationError("The continue statement should be in a loop statement");
		}
		this.loopStatement = loopStatement;
	}
	public LoopStatement getLoopStatement(){
		return loopStatement;
	}
	@Override
	public String toString(){
		return "continue statement";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[continue statement] -> "
				+ loopStatement.toString() + "\n";
	}
}
