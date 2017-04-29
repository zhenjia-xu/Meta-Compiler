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

public class BinaryBitAnd extends Expression{
	private Expression leftExpression, rightExpression;

	private BinaryBitAnd(Expression leftExpression, Expression rightExpression){
		super(IntType.getInstance(), false);
		this.leftExpression = leftExpression;
		this.rightExpression = rightExpression;
	}
	public static Expression getExpression(Expression leftExpression, Expression rightExpression){
		if(!(leftExpression.getType() instanceof IntType) ||
				!(rightExpression.getType() instanceof IntType)){
			throw new CompilationError("binary bit and needs int");
		}
		if((leftExpression instanceof IntConstant) && (rightExpression instanceof IntConstant)){
			int leftValue = ((IntConstant) leftExpression).getValue();
			int rightValue = ((IntConstant) rightExpression).getValue();
			return new IntConstant(leftValue & rightValue);
		}
		return new BinaryBitAnd(leftExpression, rightExpression);
	}
	@Override
	public String toString(){
		return "binary bit and";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "[binary bit and]\n"
				+ leftExpression.toString(indents + 1)
				+ rightExpression.toString(indents + 1);
	}
	@Override
	public void generateInstruction(List<Instruction> instructionList){
		leftExpression.generateInstruction(instructionList);
		rightExpression.generateInstruction(instructionList);
		operand = MemoryManager.getTemporaryAddress();
		Instruction instruction = new BinaryInstruction(BinaryInstruction.BinaryOp.AND, (Address)operand, leftExpression.operand, rightExpression.operand);
		instructionList.add(instruction);
	}
}
