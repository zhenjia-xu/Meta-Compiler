package AST.Constant;

import AST.Expression.Expression;
import AST.Type.Type;

public abstract class Constant extends Expression {
	public Constant(Type type) {
		super(type, false);
	}
}
