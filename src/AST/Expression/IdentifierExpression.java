package AST.Expression;

import AST.Environment;
import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import AST.Type.Type;
import Utility.Utility;
import Utility.CompilationError;
import jdk.nashorn.internal.codegen.CompilationException;

public class IdentifierExpression extends Expression{
	private Symbol symbol;

	private IdentifierExpression(Symbol symbol, boolean leftValue){
		super(symbol.getType(), leftValue);
		this.symbol = symbol;
	}
	public static Expression getExpression(String identifier){
		if(Environment.symbolTable.haveSymbol(identifier) == false){
			throw new CompilationError("Can't find the identifier named " + identifier);
		}
		Symbol symbol = Environment.symbolTable.getSymbol(identifier);
		Type type = symbol.getType();
		if(type instanceof FunctionType) {
			return new IdentifierExpression(symbol, false);
		} else {
			return new IdentifierExpression(symbol, true);
		}
	}
	public Symbol getSymbol(){
		return symbol;
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
