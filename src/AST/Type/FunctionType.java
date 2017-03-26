package AST.Type;

import AST.Scope.Scope;
import AST.Statement.BlockStatement;
import AST.Symbol.Symbol;
import Utility.Utility;

import java.util.List;

public class FunctionType extends Type implements Scope {
    private String name;
    private Type returnType;
    private List<Symbol> parameterList;
    private BlockStatement blockStatement;

    public FunctionType(String name, Type returnType, List<Symbol> parameterList){
        this.name = name;
        this.returnType = returnType;
        this.parameterList = parameterList;
    }
    public void addBlockStatement(BlockStatement blockStatement){
        this.blockStatement = blockStatement;
    }
    public String getName(){
        return name;
    }
    public Type getReturnType(){
        return returnType;
    }
    public List<Symbol>getParameterList(){
        return parameterList;
    }
    public BlockStatement getBlockStatement(){
        return blockStatement;
    }
    @Override
    public boolean compatibleWith(Type other){
        return false;
    }
    @Override
    public String toString(){
        return "function: " + name;
    }
    @Override
    public String toString(int indents){
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents));
        str.append("[function: " + name + "  (returnType: " + returnType+ ")]\n");
        for (Symbol x: parameterList) {
            str.append(Utility.getIndent(indents + 1));
            str.append("(parameter:  " + x.getName() + "  type:  " + x.getType() + ")\n");
        }
        str.append(blockStatement.toString(indents + 1));
        return str.toString();
    }
}
