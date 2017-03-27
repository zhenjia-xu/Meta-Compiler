package AST.Statement;

import AST.Expression.Expression;
import AST.Type.BoolType;
import AST.Constant.BoolConstant;
import Utility.CompilationError;
import Utility.Utility;

public class ForStatement extends LoopStatement{
	private Expression init, condition, increment;
	private Statement statement;

	public ForStatement(){
		this.init = null;
		this.condition = new BoolConstant(true);
		this.increment = null;
		this.statement = null;
	}
	public void addInit(Expression init){
		this.init = init;
	}
	public void addCondition(Expression condition){
		if(!(condition.getType() instanceof BoolType)){
			throw new CompilationError("The condition should be bool type");
		}
		this.condition = condition;
	}
	public void addIncrement(Expression increment){
		this.increment = increment;
	}
	public void addStatement(Statement statement){
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
