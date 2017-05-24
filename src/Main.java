import AST.ProgramAST;
import IR.ProgramIR;
import Utility.CompilationError;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import FrontEnd.Parser.*;
import java.io.*;
import FrontEnd.Listener.*;
import Translation.Translator;

public class Main{
	public static void main(String[] args) throws Exception {
		File file = new File("program.txt");
		InputStream in = new FileInputStream(file);
		getAST(in);
		getIR();
		Optimize();
		Translate();
	}
	public static void getAST(InputStream in)throws Exception{
		ANTLRInputStream input = new ANTLRInputStream(in);
		MetaLexer lexer = new MetaLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		MetaParser parser = new MetaParser(tokens);
		try {
			parser.removeErrorListeners();
			parser.addErrorListener(new SyntaxErrorListener());
			ParseTree tree = parser.program();
			ProgramAST.initialize();
			ParseTreeWalker walker = new ParseTreeWalker();

			walker.walk(new ClassDeclarationListener(), tree);
			walker.walk(new OtherDeclarationListener(), tree);
			walker.walk(new ASTreeListener(), tree);
			//ProgramAST.print();
		}catch(CompilationError ce){
			System.out.println(ce.getMessage());
			System.exit(1);
		}
	}
	public static void getIR(){
		ProgramIR.BuildProgramIR();
		//ProgramIR.print();
	}
	public static void Optimize(){

	}
	public static void Translate() throws Exception{
		String code = Translator.IRtoNASM();
		File file = new File("program.asm");
		PrintStream out = new PrintStream(new FileOutputStream(file));
		out.print(code);
		System.out.println(code);
	}
}
