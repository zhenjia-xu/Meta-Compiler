package AST.Expression;

import Utility.*;
import AST.Type.*;

public class ArrayExpression extends Expression{
	public Expression arrayExpression, subscriptExpression;

	private ArrayExpression(Type type, Expression arrayExpression, Expression subscriptExpression){
		super(type, arrayExpression.getLeftValue());
		this.arrayExpression = arrayExpression;
		this.subscriptExpression = subscriptExpression;
	}
	public static Expression getExpression(Expression arrayExpression, Expression subscriptExpression){
		if(!(arrayExpression.getType() instanceof ArrayType)){
			throw new CompilationError("Can't find an array type in array subscript");
		}
		if(!(subscriptExpression.getType() instanceof IntType)){
			throw new CompilationError("The subscript should be int");
		}
		ArrayType arrayType = (ArrayType) arrayExpression.getType();
		Type type;
		if(arrayType.getDimension() == 1){
			type = arrayType.getBaseType();
		} else {
			type = new ArrayType(arrayType.getBaseType(), arrayType.getDimension() - 1);
		}
		return new ArrayExpression(type, arrayExpression, subscriptExpression);
	}
	@Override
	public String toString(){
		return "array subscript";
	}
	@Override
	public String toString(int indents){
		StringBuilder str = new StringBuilder();
		str.append(Utility.getIndent(indents) + "[array subscript]\n");
		str.append(arrayExpression.toString(indents + 1));
		str.append(subscriptExpression.toString(indents + 1));
		return str.toString();
	}
}
