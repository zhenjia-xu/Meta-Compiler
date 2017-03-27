package AST.Expression;

import AST.Symbol.Symbol;
import Utility.Utility;

public class IdentifierExpression extends Expression{
	private Symbol symbol;

	public IdentifierExpression(String name){
		
	}
	@Override
	public String toString(){
		return "identifier";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[identifier]\n"
				+ symbol.toString(indents + 1);
	}
}
