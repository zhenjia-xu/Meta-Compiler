package AST.Expression.PrefixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import Utility.*;

import java.util.List;

public class PrefixDecrement extends Expression {
	private Expression expression;

	private PrefixDecrement(Expression expression) {
		super(expression.getType(), true);
		this.expression = expression;
	}

	public static Expression getExpression(Expression expression) {
		if (!(expression.getType() instanceof IntType)) {
			throw new CompilationError("prefix decrement needs int");
		}
		if (expression.getLeftValue() == false) {
			throw new CompilationError("prefix decrement needs a left-value");
		}
		return new PrefixDecrement(expression);
	}

	@Override
	public String toString() {
		return "prefix decrement";
	}

	@Override
	public String toString(int indents) {
		return Utility.getIndent(indents) + "[prefix decrement]\n"
				+ expression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		expression.generateInstruction(instructionList);
		VirtualRegister operand;
		if(expression.operand instanceof VirtualRegister){
			operand = (VirtualRegister) expression.operand;
		}else{
			operand = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(operand, expression.operand));
		}
		instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.DEC, operand, operand));
	}
}
