package Utility;

public class Utility {
    public static String getIndent(int indents){
        StringBuilder str = new StringBuilder();
        for(int i = 0; i < indents; i++)
            str.append('\t');
        return str.toString();
    }
}
