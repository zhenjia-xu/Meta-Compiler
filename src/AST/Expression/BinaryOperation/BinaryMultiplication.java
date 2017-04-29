package AST.Expression.BinaryOperation;


import AST.Constant.IntConstant;
import AST.Expression.Expression;
import AST.Type.*;
import IR.BinaryInstruction;
import IR.Instruction;
import IR.MemoryManager;
import IR.Address;
import Utility.CompilationError;
import Utility.Utility;

import java.util.List;

public class BinaryMultiplication extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryMultiplication(Expression leftExpression, Expression rightExpressoin){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpressoin;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary multiplication needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new IntConstant(leftValue * rightValue);
		}
		return new BinaryMultiplication(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary multiplication";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary multiplication]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		operand = MemoryManager.getTemporaryAddress();
		Instruction instruction = new BinaryInstruction(BinaryInstruction.BinaryOp.MUL, (Address) operand, leftExpression.operand, rightExpression.operand);
		instructionList.add(instruction);
	}
}
