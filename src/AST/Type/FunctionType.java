package AST.Type;

import AST.Statement.BlockStatement;
import AST.Statement.Statement;
import AST.Symbol.Scope;
import AST.Symbol.Symbol;
import IR.Instruction.LabelInstruction;
import Utility.Utility;

import java.util.List;

public class FunctionType extends Type implements Scope {
	public String name;
	private Type returnType;
	private List<Symbol> parameterList;
	private BlockStatement blockStatement;
	private Scope classScope;
	private boolean builtin;
	public LabelInstruction enterLabel, exitLabel;

	public FunctionType(String name, Type returnType, List<Symbol> parameterList) {
		this.name = name;
		this.returnType = returnType;
		this.parameterList = parameterList;
		this.classScope = null;
		this.builtin = false;
	}

	public void addClassScope(Scope classScope) {
		this.classScope = classScope;
	}

	public void addBlockStatement(BlockStatement blockStatement) {
		this.blockStatement = blockStatement;
	}

	public String getName() {
		if (classScope == null) {
			return name;
		} else {
			return ((ClassType) classScope).getName() + "." + name;
		}
	}

	public String getRawName() {
		return name;
	}

	public void setBuiltin() {
		builtin = true;
	}

	public boolean isBuiltin() {
		return builtin;
	}

	public Type getReturnType() {
		return returnType;
	}

	public List<Symbol> getParameterList() {
		return parameterList;
	}

	public BlockStatement getBlockStatement() {
		return blockStatement;
	}

	public List<Statement> getBlockStatementList() {
		return blockStatement.getStatementList();
	}

	public Scope getClassScope() {
		return classScope;
	}

	@Override
	public boolean compatibleWith(Type other) {
		return false;
	}

	@Override
	public String toString() {
		return "function:" + name;
	}

	@Override
	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents));
		str.append("[function: " + name + "  returnType: " + returnType + "]\n");
		parameterList.forEach(parameter ->
				str.append(parameter.toString(indents)));
		str.append(blockStatement.toString(indents + 1));
		return str.toString();
	}
}
