package AST.Statement;

import AST.Environment;
import Utility.CompilationError;
import Utility.Utility;

public class BreakStatement extends Statement{
	private LoopStatement loopStatement;

	public BreakStatement(){
		LoopStatement loopStatement = Environment.symbolTable.getCurrentLoop();
		if(loopStatement == null){
			throw new CompilationError("The break statement should be in a loop statement");
		}
		this.loopStatement = loopStatement;
	}
	public LoopStatement getLoopStatement(){
		return loopStatement;
	}
	@Override
	public String toString(){
		return "break statement";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[break statement] -> "
				+ loopStatement.toString() + "\n";
	}
}
