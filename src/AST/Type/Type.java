package AST.Type;

public abstract class Type {
	public abstract boolean compatibleWith(Type other);

	public abstract String toString(int indents);
}
