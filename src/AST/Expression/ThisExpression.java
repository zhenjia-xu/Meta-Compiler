package AST.Expression;

import AST.Environment;
import AST.Type.Type;
import Utility.*;

public class ThisExpression extends Expression{
	private ThisExpression(Type type){
		super(type, true);
	}
	public Expression getExpression(){
		if(Environment.symbolTable.getCurrentClass() == null){
			throw new CompilationError("This should be used in a class");
		}
		return new ThisExpression(Environment.symbolTable.getCurrentClass());
	}
	@Override
	public String toString(){
		return "this";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[this]\n";
	}
}
