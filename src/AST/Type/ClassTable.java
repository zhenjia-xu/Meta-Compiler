package AST.Type;

import Utility.CompilationError;
import Utility.Utility;

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
    public Map<String, ClassType> getClassMap(){
        return classMap;
    }
    @Override
    public String toString(){
        return "class table";
    }
    public String toString(int indents){
        StringBuilder str = new StringBuilder();
        str.append(Utility.getIndent(indents) + "[class table]\n");
        classMap.forEach((name, classType) ->
                str.append(classType.toString(indents + 1)));
        return str.toString();
    }
}
