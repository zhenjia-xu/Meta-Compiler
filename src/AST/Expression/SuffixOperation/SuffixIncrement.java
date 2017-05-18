package AST.Expression.SuffixOperation;

import AST.Expression.Expression;
import AST.Type.*;
import IR.*;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Instruction.UnaryInstruction;
import Utility.*;

import java.util.List;

public class SuffixIncrement extends Expression{
	private Expression expression;

	private SuffixIncrement(Expression expression){
		super(expression.getType(), false);
		this.expression = expression;
	}
	public static  Expression getExpression(Expression expression){
		if(!(expression.getType() instanceof IntType)){
			throw new CompilationError("suffix increment needs int");
		}
		if(expression.getLeftValue() == false){
			throw new CompilationError("suffix increment needs a left-value");
		}
		return new SuffixIncrement(expression);
	}
	@Override
	public String toString(){
		return "suffix increment";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[suffix increment]\n"
				+ expression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList) {
		expression.generateInstruction(instructionList);
		operand = RegisterManager.getTemporaryRegister();
		VirtualRegister num;
		if (expression.operand instanceof VirtualRegister) {
			expression.generateInstruction(instructionList);
			operand = RegisterManager.getTemporaryRegister();
			instructionList.add(new MoveInstruction(operand, expression.operand));
			instructionList.add(new UnaryInstruction(UnaryInstruction.UnaryOp.INC, expression.operand));
		}
	}
}
