package AST;

import AST.Symbol.SymbolTable;
import AST.Type.ClassTable;
import AST.Type.FunctionTable;
import AST.Type.VariableTable;

public class Environment {
    public static ClassTable classTable;
    public static SymbolTable symbolTable;
    public static FunctionTable globalFunctionTable;
    public static VariableTable globalVariableTable;

    public static void initialize(){
        classTable = new ClassTable();
        symbolTable = new SymbolTable();
        globalFunctionTable = new FunctionTable();
        globalVariableTable = new VariableTable();
    }
    static public void print(){
        System.out.println(classTable.toString(0));
        System.out.println(globalFunctionTable.toString(0));
    }
}
