package AST.Statement;

import AST.Expression.Expression;
import AST.Type.ClassType;
import AST.Type.Type;
import FrontEnd.Listener.BaseListener;
import IR.Instruction;
import IR.MoveInstruction;
import Utility.*;

import java.util.List;

public class  VariableDeclarationStatement extends Statement {
	private Type type;
	private String name;
	private Expression expression;
	private ClassType classScope;

	public VariableDeclarationStatement(String name, Type type) {
		this.type = type;
		this.name = name;
		this.expression = null;
		this.classScope = null;
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
			instructionList.add(new MoveInstruction());
		}
	}
}
