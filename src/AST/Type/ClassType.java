package AST.Type;

import java.util.HashMap;
import java.util.Map;

import AST.Statement.VariableDeclarationStatement;
import Utility.CompilationError;

import AST.Scope.Scope;
import Utility.Utility;
public class ClassType extends Type implements Scope {
    private String name;
    private VariableTable memberVariableTable;
    private FunctionTable memberFunctionTable;

    public ClassType(String name){
        this.name = name;
        this.memberFunctionTable = new FunctionTable();
        this.memberVariableTable = new VariableTable();
    }
    public Map<String, FunctionType> getMemberFunctionTable(){
        return memberFunctionTable.getFunctionMap();
    }
    public Map<String, VariableDeclarationStatement> getMemberVariableTable(){
        return memberVariableTable.getVariableMap();
    }
    public void addMemberFunction(FunctionType function){
        memberFunctionTable.addFunction(function);
    }
    public void addMemberVariable(VariableDeclarationStatement variable){
        memberVariableTable.addVariable(variable);
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
