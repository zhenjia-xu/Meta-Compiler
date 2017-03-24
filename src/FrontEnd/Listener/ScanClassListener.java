package FrontEnd.Listener;

import FrontEnd.Listener.BaseListener;
import FrontEnd.Parser.MetaParser;

public class ScanClassListener extends BaseListener{
    @Override
    public void exitClassDeclaration(MetaParser.ClassDeclarationContext ctx) {
        String className = ctx.Identifier().toString();

    }

}
