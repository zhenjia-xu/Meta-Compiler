package AST.Expression;

import AST.ProgramAST;
import AST.Symbol.Symbol;
import AST.Type.FunctionType;
import AST.Type.Type;
import IR.Instruction;
import Utility.Utility;
import Utility.CompilationError;

import java.util.List;

public class IdentifierExpression extends Expression{
	private Symbol symbol;

	private IdentifierExpression(Symbol symbol, boolean leftValue){
		super(symbol.getType(), leftValue);
		this.symbol = symbol;
	}
	public static Expression getExpression(String identifier){
		if(ProgramAST.symbolTable.haveSymbol(identifier) == false){
			throw new CompilationError("Can't find the identifier named " + identifier);
		}
		Symbol symbol = ProgramAST.symbolTable.getSymbol(identifier);
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
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		operand = symbol.virtualRegister;
	}
}
