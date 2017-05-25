package AST.Statement;

import AST.Expression.Expression;
import IR.Instruction.Instruction;
import Utility.Utility;

import java.util.List;

public class ExpressionStatement extends Statement {
	private Expression expression;

	public ExpressionStatement(Expression expression) {
		this.expression = expression;
	}

	public Expression getExpression() {
		return expression;
	}

	@Override
	public String toString() {
		return "expression statement";
	}

	@Override
	public String toString(int indents) {
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[expression statement]\n");
		if (expression != null) {
			str.append(expression.toString(indents + 1));
		}
		return str.toString();
	}

	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		if (expression != null) {
			expression.generateInstruction(instructionList);
		}
	}
}
