package AST.Type;

import java.util.Map;
import AST.Statement.VariableDeclarationStatement;
import AST.Symbol.Scope;
import Utility.*;

public class ClassType extends Type implements Scope {
    private String name;
    private VariableTable memberVariableTable;
    private FunctionTable memberFunctionTable;
    private FunctionType construstFunction;

    public ClassType(String name){
        this.name = name;
        this.memberFunctionTable = new FunctionTable();
        this.memberVariableTable = new VariableTable();
        construstFunction = null;
    }
    public Map<String, FunctionType> getMemberFunctionTable(){
        return memberFunctionTable.getFunctionMap();
    }
    public Map<String, VariableDeclarationStatement> getMemberVariableTable(){
        return memberVariableTable.getVariableMap();
    }
    public FunctionType getMemberFunction(String name){
        return memberFunctionTable.getFunctionType(name);
    }
    public VariableDeclarationStatement getMemberVariable(String name){
        return memberVariableTable.getVariable(name);
    }
    public void addMemberFunction(FunctionType function){
        memberFunctionTable.addFunction(function);
    }
    public void addMemberVariable(VariableDeclarationStatement variable){
        memberVariableTable.addVariable(variable);
    }
    public void addConstructFunction(FunctionType function){
        if(construstFunction != null){
            throw new CompilationError("Class " + name + " can't has two construct functions");
        }
        construstFunction = function;
    }
    public String getName(){
        return name;
    }

    @Override
    public boolean compatibleWith(Type other){
        return other == NullType.getInstance() || this == other;
    }
    @Override
    public String toString(){
        return "class: " + name;
    }
    @Override
    public String toString(int indents){
        return Utility.getIndent(indents) + "[class: " + name + "]\n"
                + memberFunctionTable.toString(indents + 1)
                + memberVariableTable.toString(indents + 1);
    }
}
