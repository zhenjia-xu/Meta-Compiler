package AST;

import AST.Symbol.SymbolTable;
import AST.Type.ClassTable;
import AST.Type.FunctionTable;

public class Environment {
    public static ClassTable classTable;
    public static SymbolTable symbolTable;
    public static FunctionTable globalFunctionTable;
    public static void initialize(){
        classTable = new ClassTable();
        symbolTable = new SymbolTable();
        globalFunctionTable = new FunctionTable();
    }
    static public void print(){
        classTable.print();
        globalFunctionTable.print();
    }
}
