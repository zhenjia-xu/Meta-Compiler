package AST.Expression.PrefixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import Utility.*;

import java.util.List;

public class PrefixMinus extends Expression{
	Expression expression;

	private PrefixMinus(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("prefix minus needs int");
		}
		return new PrefixMinus(expression);
	}
	@Override
	public String toString(){
		return "prefix minus";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[prefix minus]\n"
				+ expression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		expression.generateInstruction(instructionList);
		operand = RegisterManager.getTemporaryRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.NEG, operand));
	}
}
