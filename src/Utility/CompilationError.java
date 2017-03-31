package Utility;

import FrontEnd.Listener.BaseListener;

public class CompilationError extends Error{
    public CompilationError(String Message){
        super("Compilation error: " + BaseListener.row + ":" + BaseListener.column + " : " + Message + "!");
    }
}
