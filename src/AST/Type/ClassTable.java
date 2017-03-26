package AST.Type;

import Utility.CompilationError;

import java.util.HashMap;
import java.util.Map;

public class ClassTable{
    private Map<String, ClassType> classMap;
    public ClassTable(){
        classMap = new HashMap<>();
    }
    public void add(String className, ClassType classType){
        if(classMap.containsKey(className)){
            throw new CompilationError("Can't have two classes named \"" + className +"\"");
        }
        classMap.put(className, classType);
    }
    public ClassType getClassType(String className){
        if(!classMap.containsKey(className)){
            throw new CompilationError("There is no type named \"" + className + "\"");
        }
        return classMap.get(className);
    }
    public void print(){
        classMap.forEach((name, classType) -> System.out.println(classType.toString(0)));
    }
}
