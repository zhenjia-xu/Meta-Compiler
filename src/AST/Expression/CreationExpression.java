package AST.Expression;

import AST.Type.*;
import Utility.*;

import java.util.List;

public class CreationExpression extends Expression{
	private List<Expression> expressionsList;

	private CreationExpression(Type type, List<Expression> expressionsList){
		super(type, false);
		this.expressionsList = expressionsList;
	}
	public Expression getExpression(Type type, List<Expression> expressionsList){
		if(type instanceof ClassType){
			return new CreationExpression(type, expressionsList);
		}
		else{
			if(expressionsList.isEmpty()){
				throw new CompilationError("Can't new a basic type");
			}
			return new CreationExpression(type, expressionsList);
		}
	}
	@Override
	public String toString(){
		return "creation";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[creation] " + getType().toString() + "\n");
		expressionsList.forEach(expression ->
				str.append(expression.toString(indents + 1)));
		return str.toString();
	}
}
