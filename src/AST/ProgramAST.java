package AST;

import AST.Symbol.*;
import AST.Type.*;
import com.sun.org.apache.xpath.internal.operations.Bool;
import jdk.nashorn.internal.codegen.types.BooleanType;

import java.util.ArrayList;
import java.util.List;

public class ProgramAST {
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
        globalFunctionTable.addFunction(function_array_size());
        globalFunctionTable.addFunction(function_string_length());
        globalFunctionTable.addFunction(function_string_substring());
        globalFunctionTable.addFunction(function_string_parseInt());
        globalFunctionTable.addFunction(function_string_ord());
        globalFunctionTable.addFunction(function_string_connection());
        globalFunctionTable.addFunction(function_string_EQ());
        globalFunctionTable.addFunction(function_string_NEQ());
        globalFunctionTable.addFunction(function_string_GR());
        globalFunctionTable.addFunction(function_string_GREQ());
        globalFunctionTable.addFunction(function_string_LE());
        globalFunctionTable.addFunction(function_string_LEEQ());
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
        parameterList.add(new Symbol("str", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_println(){
        String functionName = "println";
        Type returnType = VoidType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("str", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_getString(){
        String functionName = "getString";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_getInt(){
        String functionName = "getInt";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_toString(){
        String functionName = "toString";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("num", IntType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_array_size(){
        String functionName = "__array_size";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("this", null));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_length(){
        String functionName = "__string_length";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("this", null));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_substring(){
        String functionName = "__string_substring";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("this", null));
        parameterList.add(new Symbol("left", IntType.getInstance()));
        parameterList.add(new Symbol("right", IntType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_parseInt(){
        String functionName = "__string_parseInt";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("this", null));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_ord(){
        String functionName = "__string_ord";
        Type returnType = IntType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("this", null));
        parameterList.add(new Symbol("pos", IntType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_connection(){
        String functionName = "__string_connection";
        Type returnType = StringType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_EQ(){
        String functionName = "__string_EQ";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_NEQ(){
        String functionName = "__string_NEQ";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_GR(){
        String functionName = "__string_GR";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_GREQ(){
        String functionName = "__string_GREQ";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_LE(){
        String functionName = "__string_LE";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
    private static FunctionType function_string_LEEQ(){
        String functionName = "__string_LEEQ";
        Type returnType = BoolType.getInstance();
        List<Symbol> parameterList = new ArrayList<>();
        parameterList.add(new Symbol("left", StringType.getInstance()));
        parameterList.add(new Symbol("right", StringType.getInstance()));
        FunctionType function = new FunctionType(functionName, returnType, parameterList);
        function.setBuiltin();
        return function;
    }
}
