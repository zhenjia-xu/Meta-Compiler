package FrontEnd;

import org.antlr.v4.misc.OrderedHashMap;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import FrontEnd.Parser.*;
import java.io.*;
import FrontEnd.Listener.*;
import java.util.Map;
public class Main{
    public static void main(String[] args) throws Exception {
        String inputFile = null;
        if ( args.length>0 ) inputFile = args[0];
//        File file = new File("/media/xzj/project/Meta-Compiler/src/FrontEnd/code.cpp");
        File file = new File("code.cpp");
        InputStream is = new FileInputStream(file);
        ANTLRInputStream input = new ANTLRInputStream(is);
        MetaLexer lexer = new MetaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MetaParser parser = new MetaParser(tokens);
        ParseTree tree = parser.program();

        // create a standard ANTLR parse tree walker
        ParseTreeWalker walker = new ParseTreeWalker();
        // create listener then feed to walker
        BaseListener loader = new BaseListener();
        walker.walk(loader, tree);        // walk parse tree
    }
}
