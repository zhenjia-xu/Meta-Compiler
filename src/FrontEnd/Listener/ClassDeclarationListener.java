package FrontEnd.Listener;

import AST.Environment;
import AST.Type.ClassType;
import FrontEnd.Parser.MetaParser;

public class ClassDeclarationListener extends BaseListener{
    @Override
    public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        String className = ctx.Identifier().toString();
        Environment.classTable.add(className, new ClassType(className));
        returnNode.put(ctx, Environment.classTable.getClassType(className));
    }

}
