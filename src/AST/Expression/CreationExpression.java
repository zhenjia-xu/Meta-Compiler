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
	public static Expression getExpression(Type type, List<Expression> expressionsList){
		int size = expressionsList.size();
		if(!(type instanceof ClassType) && size == 0){
			throw new CompilationError("Can't new a basic type");
		}
		if(size != 0){
			if(expressionsList.get(0) == null){
				throw new CompilationError("Creation Error");
			}
			boolean flag = true;
			for(Expression expression: expressionsList){
				if(expression == null){
					flag = false;
				} else{
					if(!flag){
						throw new CompilationError("Creation Error");
					}
				}
			}
		}
		if(size == 0) {
			return new CreationExpression(type, expressionsList);
		}else{
			Type arrayType = new ArrayType(type, size);
			return new CreationExpression(arrayType, expressionsList);
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
		for(Expression expression: expressionsList){
			if(expression == null){
				str.append(Utility.getIndent(indents + 1) + "null\n");
			}else{
				str.append(expression.toString(indents + 1));
			}
		}
		return str.toString();
	}
}
