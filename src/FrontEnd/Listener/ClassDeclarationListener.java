package FrontEnd.Listener;

import AST.ProgramAST;
import AST.Type.ClassType;
import FrontEnd.Parser.MetaParser;

public class ClassDeclarationListener extends BaseListener{
    @Override
    public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        String className = ctx.Identifier().getText();
        ProgramAST.classTable.add(className, new ClassType(className));
        returnNode.put(ctx, ProgramAST.classTable.getClassType(className));
    }

}
