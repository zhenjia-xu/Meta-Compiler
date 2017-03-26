package AST.Statement;

import AST.Expression.Expression;
import AST.Type.BoolType;
import Utility.CompilationError;
import Utility.Utility;

public class ForStatement extends LoopStatement{
	private Expression init, condition, increment;
	private Statement statement;

	public ForStatement(Expression init, Expression condition, Expression increment, Statement statement){
		if(!(condition.getType() instanceof BoolType)){
			throw new CompilationError("The condition must be a bool type");
		}
		this.init = init;
		this.condition = condition;
		this.increment = increment;
		this.statement = statement;
	}
	public Expression getInit(){
		return init;
	}
	public Expression getCondition(){
		return condition;
	}
	public Expression getIncrement(){
		return increment;
	}
	public Statement getStatement(){
		return statement;
	}
	@Override
	public String toString(){
		return "for statement";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[for statement]\n");
		if(init == null){
			str.append(Utility.getIndent(indents + 1) + "no init\n");
		}
		else{
			str.append(init.toString(indents + 1));
		}
		if(condition == null){
			str.append(Utility.getIndent(indents + 1) + "no condition\n");
		}
		else{
			str.append(condition.toString(indents + 1));
		}
		if(increment == null){
			str.append(Utility.getIndent(indents + 1) + "no increment\n");
		}
		else{
			str.append(increment.toString(indents + 1));
		}
		str.append(statement.toString(indents + 1));
		return str.toString();
	}
}
