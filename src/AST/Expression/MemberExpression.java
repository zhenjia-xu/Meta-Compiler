package AST.Expression;

import AST.Statement.VariableDeclarationStatement;
import FrontEnd.Listener.BaseListener;
import IR.Instruction;
import Utility.*;
import AST.Type.*;
import AST.Symbol.*;

import java.util.ArrayList;
import java.util.List;

public class MemberExpression extends Expression{
	private Expression expression;
	private String identifier;

	private MemberExpression(Type type, Expression expression, String identifier){
		super(type, expression.getLeftValue());
		this.expression = expression;
		this.identifier = identifier;
	}
	public static Expression getExpression(Expression expression, String identifier){
		if(expression.getType() instanceof ClassType){
			ClassType classType = (ClassType) expression.getType();
			if(classType.getMemberFunctionTable().containsKey(identifier)){
				FunctionType function = classType.getMemberFunction(identifier);
				return new MemberExpression(function, expression, identifier);
			}
			if(classType.getMemberVariableTable().containsKey(identifier)) {
				VariableDeclarationStatement variable = classType.getMemberVariable(identifier);
				return new MemberExpression(variable.getType(), expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		if(expression.getType() instanceof StringType){
			if(identifier.equals("length")){
				String functionName = "length";
				Type returnType = IntType.getInstance();
				List<Symbol> parameterList = new ArrayList<>();
				FunctionType function = new FunctionType(functionName, returnType, parameterList);
				return new MemberExpression(function, expression, identifier);
			}
			if(identifier.equals("substring")){
				String functionName = "substring";
				Type returnType = StringType.getInstance();
				List<Symbol> parameterList = new ArrayList<>();
				parameterList.add(new Symbol("left", IntType.getInstance()));
				parameterList.add(new Symbol("right", IntType.getInstance()));
				FunctionType function = new FunctionType(functionName, returnType, parameterList);
				return new MemberExpression(function, expression, identifier);
			}
			if(identifier.equals("parseInt")){
				String functionName = "parseInt";
				Type returnType = IntType.getInstance();
				List<Symbol> parameterList = new ArrayList<>();
				FunctionType function = new FunctionType(functionName, returnType, parameterList);
				return new MemberExpression(function, expression, identifier);
			}
			if(identifier.equals("ord")){
				String functionName = "ord";
				Type returnType = IntType.getInstance();
				List<Symbol> parameterList = new ArrayList<>();
				parameterList.add(new Symbol("pos", IntType.getInstance()));
				FunctionType function = new FunctionType(functionName, returnType, parameterList);
				return new MemberExpression(function, expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		if(expression.getType() instanceof ArrayType){
			if(identifier.equals("size")){
				String functionName = "size";
				Type returnType = IntType.getInstance();
				List<Symbol> parameterList = new ArrayList<>();
				FunctionType function = new FunctionType(functionName, returnType, parameterList);
				return new MemberExpression(function, expression, identifier);
			}
			throw new CompilationError("Can't find a member named " + identifier);
		}
		throw new CompilationError("Member call needs class or string or array");
	}
	@Override
	public String toString(){
		return "member call";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[member call]\n" +
				expression.toString(indents + 1)
				+ Utility.getIndent(indents + 1) + "member: " + identifier + "\n";
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {

	}
}
