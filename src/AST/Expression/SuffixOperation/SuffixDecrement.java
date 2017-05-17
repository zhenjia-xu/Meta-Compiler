package AST.Expression.SuffixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import Utility.*;

import java.util.List;

public class SuffixDecrement extends Expression{
	private Expression expression;

	private SuffixDecrement(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("suffix decrement needs int");
		}
		if(expression.getLeftValue() == false){
			throw new CompilationError("suffix decrement needs a left-value");
		}
		return new SuffixDecrement(expression);
	}
	@Override
	public String toString(){
		return "suffix Decrement";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[suffix decrement]\n"
				+ expression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		expression.generateInstruction(instructionList);
		operand = RegisterManager.getTemporaryRegister();
		instructionList.add(new MoveInstruction(operand, expression.operand));
		instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.DEC, (VirtualRegister)expression.operand, expression.operand));
	}
}
