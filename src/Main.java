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
        File file = new File("program.txt");
        InputStream is = new FileInputStream(file);
        ANTLRInputStream input = new ANTLRInputStream(is);
        MetaLexer lexer = new MetaLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MetaParser parser = new MetaParser(tokens);
        try {
            parser.removeErrorListeners();
            parser.addErrorListener(new SyntaxErrorListener());
            ParseTree tree = parser.program();
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
