package AST.Statement;

import AST.Expression.Expression;
import AST.Symbol.Symbol;
import AST.Type.ClassType;
import AST.Type.Type;
import IR.Address;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand;
import IR.RegisterManager;
import IR.VirtualRegister;
import Utility.*;
import com.sun.org.apache.regexp.internal.RE;

import java.util.List;

public class VariableDeclarationStatement extends Statement {
	private Type type;
	private String name;
	private Expression expression;
	private ClassType classScope;
	private Symbol symbol;
	public int offset;

	public VariableDeclarationStatement(String name, Type type) {
		this.type = type;
		this.name = name;
		this.expression = null;
		this.classScope = null;
		this.symbol = new Symbol(name, type);
		this.offset = 0;
	}
	public void addClassScope(ClassType classScope){
		this.classScope = classScope;
	}
	public void addExpression(Expression expression) {
		if(!(type.compatibleWith(expression.getType()))){
			throw new CompilationError("The type in variable declaration statement should be compatible");
		}
		this.expression = expression;
	}
	public Type getType(){
		return type;
	}
	public String getName(){
		return name;
	}
	public Expression getExpression(){
		return expression;
	}
	public ClassType getClassScope(){
		return classScope;
	}
	public Symbol getSymbol(){
		return symbol;
	}
	@Override
	public String toString() {
		return "variable declaration statement (" + type + " " + name + ")";
	}
	@Override
	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[variable declaration statement]\n");
		str.append(Utility.getIndent(indents + 1) + "name: " + name + "  type: " + type + "\n");
		if(expression != null){
			str.append(expression.toString(indents + 1));
		}
		return str.toString();
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		if(expression != null){
			expression.generateInstruction(instructionList);
			Operand source = expression.operand;
			Operand target;
			if(symbol.global){
				VirtualRegister tmp = new VirtualRegister(symbol.getName());
				tmp.realRegister = "@" + symbol.getName();
				target = new Address(tmp);
			}else {
				target = symbol.virtualRegister;
			}
			if(target instanceof Address && source instanceof Address){
				VirtualRegister x = RegisterManager.getTemporaryRegister();
				instructionList.add(new MoveInstruction(x, source));
				instructionList.add(new MoveInstruction(target, x));
			} else{
				instructionList.add(new MoveInstruction(target, source));
			}
		}
	}
}
