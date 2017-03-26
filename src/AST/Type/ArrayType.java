package AST.Type;

import Utility.Utility;

public class ArrayType extends Type{
	private Type baseType;
	private int dimension;

	public ArrayType(Type baseType, int dimension){
		this.baseType = baseType;
		this.dimension = dimension;
	}
	public Type getBaseType(){
		return baseType;
	}
	public int getDimension(){
		return dimension;
	}
	@Override
	public boolean compatibleWith(Type other){
		if(other == NullType.getInstance()) return true;
		if(other instanceof ArrayType
				&& baseType.compatibleWith((ArrayType)((ArrayType) other).getBaseType())
				&& dimension == ((ArrayType) other).getDimension()) return true;
		return false;
	}
	@Override
	public String toString(){
		return "array: type(" + baseType + "), dimension(" + dimension + ")";
	}
	@Override
	public String toString(int indents){
		return Utility.getIndent(indents) + "array: type(" + baseType + "), dimension(" + dimension + ")";
	}
}
