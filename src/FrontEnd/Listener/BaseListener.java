package FrontEnd.Listener;

import FrontEnd.Parser.MetaBaseListener;
import org.antlr.v4.runtime.ParserRuleContext;

public class BaseListener extends MetaBaseListener{
    public static int row, column;

    @Override
    public void enterEveryRule(ParserRuleContext ctx) {
        row = ctx.getStart().getLine();
        column = ctx.getStart().getCharPositionInLine();
    }
}
