package AST.Expression;

import AST.ProgramAST;
import AST.Statement.VariableDeclarationStatement;
import IR.*;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import Utility.*;
import AST.Type.*;

import java.util.List;

public class MemberExpression extends Expression {
	private Expression expression;
	private String identifier;

	private MemberExpression(Type type, Expression expression, String identifier) {
		super(type, !(type instanceof FunctionType));
		this.expression = expression;
		this.identifier = identifier;
	}

	public static Expression getExpression(Expression expression, String identifier) {
		if (expression.getType() instanceof ClassType) {
			ClassType classType = (ClassType) expression.getType();
			if (classType.getMemberFunctionTable().containsKey(identifier)) {
				FunctionType function = classType.getMemberFunction(identifier);
				return new MemberExpression(function, expression, identifier);
			}
			if (classType.getMemberVariableTable().containsKey(identifier)) {
				VariableDeclarationStatement variable = classType.getMemberVariable(identifier);
				return new MemberExpression(variable.getType(), expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		if (expression.getType() instanceof StringType) {
			if (identifier.equals("length")) {
				FunctionType function = ProgramAST.globalFunctionTable.getFunctionType("__string_length");
				return new MemberExpression(function, expression, identifier);
			}
			if (identifier.equals("substring")) {
				FunctionType function = ProgramAST.globalFunctionTable.getFunctionType("__string_substring");
				return new MemberExpression(function, expression, identifier);
			}
			if (identifier.equals("parseInt")) {
				FunctionType function = ProgramAST.globalFunctionTable.getFunctionType("__string_parseInt");
				return new MemberExpression(function, expression, identifier);
			}
			if (identifier.equals("ord")) {
				FunctionType function = ProgramAST.globalFunctionTable.getFunctionType("__string_ord");
				return new MemberExpression(function, expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		if (expression.getType() instanceof ArrayType) {
			if (identifier.equals("size")) {
				FunctionType function = ProgramAST.globalFunctionTable.getFunctionType("__array_size");
				return new MemberExpression(function, expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		throw new CompilationError("Member call needs class or string or array");
	}

	public Expression getExpression() {
		return expression;
	}

	@Override
	public String toString() {
		return "member call";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "[member call]\n" +
				expression.toString(indents + 1)
				+ Utility.getIndent(indents + 1) + "member: " + identifier + " " + this.getLeftValue() + "\n";
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		if (!(this.getType() instanceof FunctionType)) {
			expression.generateInstruction(instructionList);
			VariableDeclarationStatement variable = ((ClassType) expression.getType()).getMemberVariable(identifier);
			VirtualRegister base;
			if (expression.operand instanceof Address) {
				base = RegisterManager.getTemporaryRegister();
				instructionList.add(new MoveInstruction(base, expression.operand));
			} else {
				base = (VirtualRegister) expression.operand;
			}
			operand = new Address(base, new ImmediateOperand(variable.offset));
		}
	}
}
