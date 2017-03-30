import AST.Environment;
import Utility.CompilationError;
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
        File file = new File("testcode.cpp");
        InputStream is = new FileInputStream(file);
        ANTLRInputStream input = new ANTLRInputStream(is);
        MetaLexer lexer = new MetaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MetaParser parser = new MetaParser(tokens);
        ParseTree tree = parser.program();
        try {
            Environment.initialize();
            ParseTreeWalker walker = new ParseTreeWalker();

            walker.walk(new ClassDeclarationListener(), tree);
            walker.walk(new OtherDeclarationListener(), tree);
            walker.walk(new ASTreeListener(), tree);
            Environment.print();
        }catch(CompilationError ce){
            System.out.println(ce.getMessage());
            System.exit(1);
        }
    }
}
