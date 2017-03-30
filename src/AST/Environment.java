package AST;

import AST.Symbol.*;
import AST.Type.*;

import java.util.ArrayList;
import java.util.List;

public class Environment {
    public static ClassTable classTable;
    public static SymbolTable symbolTable;
    public static FunctionTable globalFunctionTable;
    public static VariableTable globalVariableTable;

    private static void addBuiltinFunction(){
        globalFunctionTable.addFunction(function_print());
        globalFunctionTable.addFunction(function_println());
        globalFunctionTable.addFunction(function_getString());
        globalFunctionTable.addFunction(function_getInt());
        globalFunctionTable.addFunction(function_toString());
    }
    public static void initialize(){
        classTable = new ClassTable();
        symbolTable = new SymbolTable();
        globalFunctionTable = new FunctionTable();
        globalVariableTable = new VariableTable();
        addBuiltinFunction();
    }
    static public void print(){
        System.out.println(classTable.toString(0));
        System.out.println(globalFunctionTable.toString(0));
        System.out.print(globalVariableTable.toString(0));
    }
    private static FunctionType function_print(){
        String functionName = "print";
        Type returnType = VoidType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        Symbol symbol = new Symbol("str", StringType.getInstance());
        parameterList.add(symbol);
        return new FunctionType(functionName, returnType, parameterList);
    }
    private static FunctionType function_println(){
        String functionName = "println";
        Type returnType = VoidType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        Symbol symbol = new Symbol("str", StringType.getInstance());
        parameterList.add(symbol);
        return new FunctionType(functionName, returnType, parameterList);
    }
    private static FunctionType function_getString(){
        String functionName = "getString";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        return new FunctionType(functionName, returnType, parameterList);
    }
    private static FunctionType function_getInt(){
        String functionName = "getInt";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        return new FunctionType(functionName, returnType, parameterList);
    }
    private static FunctionType function_toString(){
        String functionName = "toString";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        Symbol symbol = new Symbol("num", IntType.getInstance());
        parameterList.add(symbol);
        return new FunctionType(functionName, returnType, parameterList);
    }
    private static FunctionType function_length(){
        String functionName = "length";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.addClassScope(StringType.getInstance());
        return function;
    }
}
