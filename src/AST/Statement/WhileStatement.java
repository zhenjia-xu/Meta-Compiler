package AST.Statement;

import AST.Expression.Expression;
import AST.Type.BoolType;
import Utility.CompilationError;
import Utility.Utility;
public class WhileStatement extends LoopStatement{
	private Expression condition;
	private Statement statement;

	public WhileStatement(Expression condition, Statement statement){
		if(!(condition.getType() instanceof BoolType)){
			throw new CompilationError("The condition must be a bool type");
		}
		this.condition = condition;
		this.statement = statement;
	}
	public Expression getCondition(){
		return condition;
	}
	public Statement getStatement(){
		return statement;
	}
	@Override
	public String toString(){
		return "while statement";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[while statement]\n"
				+ condition.toString(indents + 1)
				+ statement.toString(indents + 1);
	}
}
