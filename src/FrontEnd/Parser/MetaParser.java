// Generated from /media/xzj/project/Meta-Compiler/src/FrontEnd/Parser/Meta.g4 by ANTLR 4.6
package FrontEnd.Parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MetaParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.6", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, BlockComment=49, LineComment=50, BlankCharacter=51, 
		Integer=52, String=53, Identifier=54;
	public static final int
		RULE_program = 0, RULE_functionDeclaration = 1, RULE_classDeclaration = 2, 
		RULE_type = 3, RULE_voidtype = 4, RULE_constant = 5, RULE_statement = 6, 
		RULE_blockStatement = 7, RULE_expressionStatement = 8, RULE_variableDeclaration = 9, 
		RULE_ifStatement = 10, RULE_forStatement = 11, RULE_whileStatement = 12, 
		RULE_continueStatement = 13, RULE_breakStatement = 14, RULE_returnStatement = 15, 
		RULE_expression = 16;
	public static final String[] ruleNames = {
		"program", "functionDeclaration", "classDeclaration", "type", "voidtype", 
		"constant", "statement", "blockStatement", "expressionStatement", "variableDeclaration", 
		"ifStatement", "forStatement", "whileStatement", "continueStatement", 
		"breakStatement", "returnStatement", "expression"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'('", "','", "')'", "'class'", "'{'", "'}'", "'int'", "'string'", 
		"'bool'", "'['", "']'", "'void'", "'null'", "'true'", "'false'", "';'", 
		"'='", "'if'", "'else'", "'for'", "'while'", "'continue'", "'break'", 
		"'return'", "'New'", "'.'", "'++'", "'--'", "'+'", "'-'", "'~'", "'!'", 
		"'*'", "'/'", "'%'", "'<<'", "'>>'", "'<'", "'>'", "'<='", "'>='", "'=='", 
		"'!='", "'&'", "'^'", "'|'", "'&&'", "'||'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, "BlockComment", "LineComment", "BlankCharacter", "Integer", "String", 
		"Identifier"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Meta.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MetaParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public List<ClassDeclarationContext> classDeclaration() {
			return getRuleContexts(ClassDeclarationContext.class);
		}
		public ClassDeclarationContext classDeclaration(int i) {
			return getRuleContext(ClassDeclarationContext.class,i);
		}
		public List<VariableDeclarationContext> variableDeclaration() {
			return getRuleContexts(VariableDeclarationContext.class);
		}
		public VariableDeclarationContext variableDeclaration(int i) {
			return getRuleContext(VariableDeclarationContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(37); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(37);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(34);
					functionDeclaration();
					}
					break;
				case 2:
					{
					setState(35);
					classDeclaration();
					}
					break;
				case 3:
					{
					setState(36);
					variableDeclaration();
					}
					break;
				}
				}
				setState(39); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__11) | (1L << Identifier))) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionDeclarationContext extends ParserRuleContext {
		public List<TerminalNode> Identifier() { return getTokens(MetaParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MetaParser.Identifier, i);
		}
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public VoidtypeContext voidtype() {
			return getRuleContext(VoidtypeContext.class,0);
		}
		public FunctionDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterFunctionDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitFunctionDeclaration(this);
		}
	}

	public final FunctionDeclarationContext functionDeclaration() throws RecognitionException {
		FunctionDeclarationContext _localctx = new FunctionDeclarationContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_functionDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(43);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__6:
			case T__7:
			case T__8:
			case Identifier:
				{
				setState(41);
				type(0);
				}
				break;
			case T__11:
				{
				setState(42);
				voidtype();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(45);
			match(Identifier);
			setState(46);
			match(T__0);
			setState(58);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << Identifier))) != 0)) {
				{
				setState(47);
				type(0);
				setState(48);
				match(Identifier);
				setState(55);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(49);
					match(T__1);
					setState(50);
					type(0);
					setState(51);
					match(Identifier);
					}
					}
					setState(57);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(60);
			match(T__2);
			setState(61);
			blockStatement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDeclarationContext extends ParserRuleContext {
		public TerminalNode Identifier() { return getToken(MetaParser.Identifier, 0); }
		public List<VariableDeclarationContext> variableDeclaration() {
			return getRuleContexts(VariableDeclarationContext.class);
		}
		public VariableDeclarationContext variableDeclaration(int i) {
			return getRuleContext(VariableDeclarationContext.class,i);
		}
		public List<FunctionDeclarationContext> functionDeclaration() {
			return getRuleContexts(FunctionDeclarationContext.class);
		}
		public FunctionDeclarationContext functionDeclaration(int i) {
			return getRuleContext(FunctionDeclarationContext.class,i);
		}
		public ClassDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterClassDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitClassDeclaration(this);
		}
	}

	public final ClassDeclarationContext classDeclaration() throws RecognitionException {
		ClassDeclarationContext _localctx = new ClassDeclarationContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_classDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(63);
			match(T__3);
			setState(64);
			match(Identifier);
			setState(65);
			match(T__4);
			setState(70);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__11) | (1L << Identifier))) != 0)) {
				{
				setState(68);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
				case 1:
					{
					setState(66);
					variableDeclaration();
					}
					break;
				case 2:
					{
					setState(67);
					functionDeclaration();
					}
					break;
				}
				}
				setState(72);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(73);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Integer_TypeContext extends TypeContext {
		public Integer_TypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterInteger_Type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitInteger_Type(this);
		}
	}
	public static class Bool_TypeContext extends TypeContext {
		public Bool_TypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBool_Type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBool_Type(this);
		}
	}
	public static class Class_TypeContext extends TypeContext {
		public TerminalNode Identifier() { return getToken(MetaParser.Identifier, 0); }
		public Class_TypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterClass_Type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitClass_Type(this);
		}
	}
	public static class String_TypeContext extends TypeContext {
		public String_TypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterString_Type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitString_Type(this);
		}
	}
	public static class Array_TypeContext extends TypeContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public Array_TypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterArray_Type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitArray_Type(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		return type(0);
	}

	private TypeContext type(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TypeContext _localctx = new TypeContext(_ctx, _parentState);
		TypeContext _prevctx = _localctx;
		int _startState = 6;
		enterRecursionRule(_localctx, 6, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(80);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__6:
				{
				_localctx = new Integer_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(76);
				match(T__6);
				}
				break;
			case T__7:
				{
				_localctx = new String_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(77);
				match(T__7);
				}
				break;
			case T__8:
				{
				_localctx = new Bool_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(78);
				match(T__8);
				}
				break;
			case Identifier:
				{
				_localctx = new Class_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(79);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(87);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Array_TypeContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(82);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(83);
					match(T__9);
					setState(84);
					match(T__10);
					}
					} 
				}
				setState(89);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class VoidtypeContext extends ParserRuleContext {
		public VoidtypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_voidtype; }
	 
		public VoidtypeContext() { }
		public void copyFrom(VoidtypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Void_typeContext extends VoidtypeContext {
		public Void_typeContext(VoidtypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterVoid_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitVoid_type(this);
		}
	}

	public final VoidtypeContext voidtype() throws RecognitionException {
		VoidtypeContext _localctx = new VoidtypeContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_voidtype);
		try {
			_localctx = new Void_typeContext(_localctx);
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			match(T__11);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
	 
		public ConstantContext() { }
		public void copyFrom(ConstantContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Bool_ConstantContext extends ConstantContext {
		public Bool_ConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBool_Constant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBool_Constant(this);
		}
	}
	public static class String_ConstantContext extends ConstantContext {
		public TerminalNode String() { return getToken(MetaParser.String, 0); }
		public String_ConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterString_Constant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitString_Constant(this);
		}
	}
	public static class Integer_ConstantContext extends ConstantContext {
		public TerminalNode Integer() { return getToken(MetaParser.Integer, 0); }
		public Integer_ConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterInteger_Constant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitInteger_Constant(this);
		}
	}
	public static class Null_ConstantContext extends ConstantContext {
		public Null_ConstantContext(ConstantContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterNull_Constant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitNull_Constant(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_constant);
		int _la;
		try {
			setState(96);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__12:
				_localctx = new Null_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(92);
				match(T__12);
				}
				break;
			case T__13:
			case T__14:
				_localctx = new Bool_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(93);
				_la = _input.LA(1);
				if ( !(_la==T__13 || _la==T__14) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case String:
				_localctx = new String_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(94);
				match(String);
				}
				break;
			case Integer:
				_localctx = new Integer_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(95);
				match(Integer);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public BlockStatementContext blockStatement() {
			return getRuleContext(BlockStatementContext.class,0);
		}
		public ExpressionStatementContext expressionStatement() {
			return getRuleContext(ExpressionStatementContext.class,0);
		}
		public VariableDeclarationContext variableDeclaration() {
			return getRuleContext(VariableDeclarationContext.class,0);
		}
		public IfStatementContext ifStatement() {
			return getRuleContext(IfStatementContext.class,0);
		}
		public ForStatementContext forStatement() {
			return getRuleContext(ForStatementContext.class,0);
		}
		public WhileStatementContext whileStatement() {
			return getRuleContext(WhileStatementContext.class,0);
		}
		public ContinueStatementContext continueStatement() {
			return getRuleContext(ContinueStatementContext.class,0);
		}
		public BreakStatementContext breakStatement() {
			return getRuleContext(BreakStatementContext.class,0);
		}
		public ReturnStatementContext returnStatement() {
			return getRuleContext(ReturnStatementContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitStatement(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_statement);
		try {
			setState(107);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(98);
				blockStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(99);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(100);
				variableDeclaration();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(101);
				ifStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(102);
				forStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(103);
				whileStatement();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(104);
				continueStatement();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(105);
				breakStatement();
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(106);
				returnStatement();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockStatementContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_blockStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBlockStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBlockStatement(this);
		}
	}

	public final BlockStatementContext blockStatement() throws RecognitionException {
		BlockStatementContext _localctx = new BlockStatementContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_blockStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(109);
			match(T__4);
			setState(113);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__17) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				{
				setState(110);
				statement();
				}
				}
				setState(115);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(116);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterExpressionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitExpressionStatement(this);
		}
	}

	public final ExpressionStatementContext expressionStatement() throws RecognitionException {
		ExpressionStatementContext _localctx = new ExpressionStatementContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_expressionStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(119);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(118);
				expression(0);
				}
			}

			setState(121);
			match(T__15);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableDeclarationContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode Identifier() { return getToken(MetaParser.Identifier, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VariableDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterVariableDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitVariableDeclaration(this);
		}
	}

	public final VariableDeclarationContext variableDeclaration() throws RecognitionException {
		VariableDeclarationContext _localctx = new VariableDeclarationContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_variableDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(123);
			type(0);
			setState(124);
			match(Identifier);
			setState(127);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__16) {
				{
				setState(125);
				match(T__16);
				setState(126);
				expression(0);
				}
			}

			setState(129);
			match(T__15);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public IfStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterIfStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitIfStatement(this);
		}
	}

	public final IfStatementContext ifStatement() throws RecognitionException {
		IfStatementContext _localctx = new IfStatementContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_ifStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(131);
			match(T__17);
			setState(132);
			match(T__0);
			setState(133);
			expression(0);
			setState(134);
			match(T__2);
			setState(135);
			statement();
			setState(138);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				{
				setState(136);
				match(T__18);
				setState(137);
				statement();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStatementContext extends ParserRuleContext {
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ForStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitForStatement(this);
		}
	}

	public final ForStatementContext forStatement() throws RecognitionException {
		ForStatementContext _localctx = new ForStatementContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_forStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(140);
			match(T__19);
			setState(141);
			match(T__0);
			setState(143);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(142);
				expression(0);
				}
			}

			setState(145);
			match(T__15);
			setState(147);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(146);
				expression(0);
				}
			}

			setState(149);
			match(T__15);
			setState(151);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(150);
				expression(0);
				}
			}

			setState(153);
			match(T__2);
			setState(154);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileStatementContext extends ParserRuleContext {
		public StatementContext statement() {
			return getRuleContext(StatementContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public WhileStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterWhileStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitWhileStatement(this);
		}
	}

	public final WhileStatementContext whileStatement() throws RecognitionException {
		WhileStatementContext _localctx = new WhileStatementContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_whileStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			match(T__20);
			setState(157);
			match(T__0);
			setState(159);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(158);
				expression(0);
				}
			}

			setState(161);
			match(T__2);
			setState(162);
			statement();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ContinueStatementContext extends ParserRuleContext {
		public ContinueStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_continueStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterContinueStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitContinueStatement(this);
		}
	}

	public final ContinueStatementContext continueStatement() throws RecognitionException {
		ContinueStatementContext _localctx = new ContinueStatementContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_continueStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(164);
			match(T__21);
			setState(165);
			match(T__15);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BreakStatementContext extends ParserRuleContext {
		public BreakStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_breakStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBreakStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBreakStatement(this);
		}
	}

	public final BreakStatementContext breakStatement() throws RecognitionException {
		BreakStatementContext _localctx = new BreakStatementContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_breakStatement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(167);
			match(T__22);
			setState(168);
			match(T__15);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnStatementContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnStatement; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitReturnStatement(this);
		}
	}

	public final ReturnStatementContext returnStatement() throws RecognitionException {
		ReturnStatementContext _localctx = new ReturnStatementContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_returnStatement);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(170);
			match(T__23);
			setState(172);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(171);
				expression(0);
				}
			}

			setState(174);
			match(T__15);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Function_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Function_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterFunction_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitFunction_Expression(this);
		}
	}
	public static class Logical_And_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Logical_And_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterLogical_And_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitLogical_And_Expression(this);
		}
	}
	public static class Bit_And_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Bit_And_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBit_And_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBit_And_Expression(this);
		}
	}
	public static class Identifier_ExpressionContext extends ExpressionContext {
		public TerminalNode Identifier() { return getToken(MetaParser.Identifier, 0); }
		public Identifier_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterIdentifier_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitIdentifier_Expression(this);
		}
	}
	public static class Prefix_ExpressionContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Prefix_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterPrefix_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitPrefix_Expression(this);
		}
	}
	public static class Member_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode Identifier() { return getToken(MetaParser.Identifier, 0); }
		public Member_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterMember_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitMember_Expression(this);
		}
	}
	public static class Shift_ExpressionContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Shift_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterShift_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitShift_Expression(this);
		}
	}
	public static class Suffix_ExpressionContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Suffix_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterSuffix_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitSuffix_Expression(this);
		}
	}
	public static class Mul_Div_Mod_ExpressionContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Mul_Div_Mod_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterMul_Div_Mod_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitMul_Div_Mod_Expression(this);
		}
	}
	public static class Bit_or_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Bit_or_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBit_or_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBit_or_Expression(this);
		}
	}
	public static class Creation_ExpressionContext extends ExpressionContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Creation_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterCreation_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitCreation_Expression(this);
		}
	}
	public static class Array_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Array_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterArray_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitArray_Expression(this);
		}
	}
	public static class Add_Sub_ExpressionContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Add_Sub_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterAdd_Sub_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitAdd_Sub_Expression(this);
		}
	}
	public static class Bit_Xor_ExpreeeionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Bit_Xor_ExpreeeionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterBit_Xor_Expreeeion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitBit_Xor_Expreeeion(this);
		}
	}
	public static class Assignment_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Assignment_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterAssignment_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitAssignment_Expression(this);
		}
	}
	public static class Constant_ExpressionContext extends ExpressionContext {
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public Constant_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterConstant_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitConstant_Expression(this);
		}
	}
	public static class Logical_Or_ExpressionContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Logical_Or_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterLogical_Or_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitLogical_Or_Expression(this);
		}
	}
	public static class Equality_ExpressionContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Equality_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterEquality_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitEquality_Expression(this);
		}
	}
	public static class Subgroup_ExpressionContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Subgroup_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterSubgroup_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitSubgroup_Expression(this);
		}
	}
	public static class Relation_ExpressionContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public Relation_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterRelation_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitRelation_Expression(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 32;
		enterRecursionRule(_localctx, 32, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(203);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__12:
			case T__13:
			case T__14:
			case Integer:
			case String:
				{
				_localctx = new Constant_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(177);
				constant();
				}
				break;
			case Identifier:
				{
				_localctx = new Identifier_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(178);
				match(Identifier);
				}
				break;
			case T__24:
				{
				_localctx = new Creation_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(179);
				match(T__24);
				setState(180);
				type(0);
				setState(187);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(181);
						match(T__9);
						setState(182);
						expression(0);
						setState(183);
						match(T__10);
						}
						} 
					}
					setState(189);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
				}
				setState(194);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(190);
						match(T__9);
						setState(191);
						match(T__10);
						}
						} 
					}
					setState(196);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,21,_ctx);
				}
				}
				break;
			case T__0:
				{
				_localctx = new Subgroup_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(197);
				match(T__0);
				setState(198);
				expression(0);
				setState(199);
				match(T__2);
				}
				break;
			case T__26:
			case T__27:
			case T__28:
			case T__29:
			case T__30:
			case T__31:
				{
				_localctx = new Prefix_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(201);
				((Prefix_ExpressionContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31))) != 0)) ) {
					((Prefix_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(202);
				expression(12);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(279);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(277);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
					case 1:
						{
						_localctx = new Mul_Div_Mod_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(205);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(206);
						((Mul_Div_Mod_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__32) | (1L << T__33) | (1L << T__34))) != 0)) ) {
							((Mul_Div_Mod_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(207);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new Add_Sub_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(208);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(209);
						((Add_Sub_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__28 || _la==T__29) ) {
							((Add_Sub_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(210);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new Shift_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(211);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(212);
						((Shift_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__35 || _la==T__36) ) {
							((Shift_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(213);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new Relation_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(214);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(215);
						((Relation_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__37) | (1L << T__38) | (1L << T__39) | (1L << T__40))) != 0)) ) {
							((Relation_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(216);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new Equality_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(217);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(218);
						((Equality_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__41 || _la==T__42) ) {
							((Equality_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(219);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new Bit_And_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(220);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(221);
						match(T__43);
						setState(222);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new Bit_Xor_ExpreeeionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(223);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(224);
						match(T__44);
						setState(225);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new Bit_or_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(226);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(227);
						match(T__45);
						setState(228);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new Logical_And_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(229);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(230);
						match(T__46);
						setState(231);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new Logical_Or_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(232);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(233);
						match(T__47);
						setState(234);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new Assignment_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(235);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(236);
						match(T__16);
						setState(237);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new Function_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(238);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(239);
						match(T__0);
						setState(248);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
							{
							setState(240);
							expression(0);
							setState(245);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(241);
								match(T__1);
								setState(242);
								expression(0);
								}
								}
								setState(247);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(250);
						match(T__2);
						}
						break;
					case 13:
						{
						_localctx = new Array_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(251);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(252);
						match(T__9);
						setState(253);
						expression(0);
						setState(254);
						match(T__10);
						}
						break;
					case 14:
						{
						_localctx = new Member_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(256);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(257);
						match(T__25);
						setState(273);
						_errHandler.sync(this);
						switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
						case 1:
							{
							setState(258);
							match(Identifier);
							}
							break;
						case 2:
							{
							setState(259);
							expression(0);
							setState(260);
							match(T__0);
							setState(269);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
								{
								setState(261);
								expression(0);
								setState(266);
								_errHandler.sync(this);
								_la = _input.LA(1);
								while (_la==T__1) {
									{
									{
									setState(262);
									match(T__1);
									setState(263);
									expression(0);
									}
									}
									setState(268);
									_errHandler.sync(this);
									_la = _input.LA(1);
								}
								}
							}

							setState(271);
							match(T__2);
							}
							break;
						}
						}
						break;
					case 15:
						{
						_localctx = new Suffix_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(275);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(276);
						((Suffix_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__26 || _la==T__27) ) {
							((Suffix_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(281);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 3:
			return type_sempred((TypeContext)_localctx, predIndex);
		case 16:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean type_sempred(TypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 11);
		case 2:
			return precpred(_ctx, 10);
		case 3:
			return precpred(_ctx, 9);
		case 4:
			return precpred(_ctx, 8);
		case 5:
			return precpred(_ctx, 7);
		case 6:
			return precpred(_ctx, 6);
		case 7:
			return precpred(_ctx, 5);
		case 8:
			return precpred(_ctx, 4);
		case 9:
			return precpred(_ctx, 3);
		case 10:
			return precpred(_ctx, 2);
		case 11:
			return precpred(_ctx, 1);
		case 12:
			return precpred(_ctx, 16);
		case 13:
			return precpred(_ctx, 15);
		case 14:
			return precpred(_ctx, 14);
		case 15:
			return precpred(_ctx, 13);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\38\u011d\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\3\2\3\2\3\2\6\2(\n\2\r\2\16\2)\3\3\3\3\5\3.\n\3\3\3\3\3\3\3\3\3\3\3\3"+
		"\3\3\3\3\3\7\38\n\3\f\3\16\3;\13\3\5\3=\n\3\3\3\3\3\3\3\3\4\3\4\3\4\3"+
		"\4\3\4\7\4G\n\4\f\4\16\4J\13\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\5\5S\n\5\3"+
		"\5\3\5\3\5\7\5X\n\5\f\5\16\5[\13\5\3\6\3\6\3\7\3\7\3\7\3\7\5\7c\n\7\3"+
		"\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\5\bn\n\b\3\t\3\t\7\tr\n\t\f\t\16\t"+
		"u\13\t\3\t\3\t\3\n\5\nz\n\n\3\n\3\n\3\13\3\13\3\13\3\13\5\13\u0082\n\13"+
		"\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u008d\n\f\3\r\3\r\3\r\5\r\u0092"+
		"\n\r\3\r\3\r\5\r\u0096\n\r\3\r\3\r\5\r\u009a\n\r\3\r\3\r\3\r\3\16\3\16"+
		"\3\16\5\16\u00a2\n\16\3\16\3\16\3\16\3\17\3\17\3\17\3\20\3\20\3\20\3\21"+
		"\3\21\5\21\u00af\n\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\7\22\u00bc\n\22\f\22\16\22\u00bf\13\22\3\22\3\22\7\22\u00c3\n\22"+
		"\f\22\16\22\u00c6\13\22\3\22\3\22\3\22\3\22\3\22\3\22\5\22\u00ce\n\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\7\22\u00f6\n\22\f\22"+
		"\16\22\u00f9\13\22\5\22\u00fb\n\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\7\22\u010b\n\22\f\22\16\22\u010e\13"+
		"\22\5\22\u0110\n\22\3\22\3\22\5\22\u0114\n\22\3\22\3\22\7\22\u0118\n\22"+
		"\f\22\16\22\u011b\13\22\3\22\2\4\b\"\23\2\4\6\b\n\f\16\20\22\24\26\30"+
		"\32\34\36 \"\2\n\3\2\20\21\3\2\35\"\3\2#%\3\2\37 \3\2&\'\3\2(+\3\2,-\3"+
		"\2\35\36\u0145\2\'\3\2\2\2\4-\3\2\2\2\6A\3\2\2\2\bR\3\2\2\2\n\\\3\2\2"+
		"\2\fb\3\2\2\2\16m\3\2\2\2\20o\3\2\2\2\22y\3\2\2\2\24}\3\2\2\2\26\u0085"+
		"\3\2\2\2\30\u008e\3\2\2\2\32\u009e\3\2\2\2\34\u00a6\3\2\2\2\36\u00a9\3"+
		"\2\2\2 \u00ac\3\2\2\2\"\u00cd\3\2\2\2$(\5\4\3\2%(\5\6\4\2&(\5\24\13\2"+
		"\'$\3\2\2\2\'%\3\2\2\2\'&\3\2\2\2()\3\2\2\2)\'\3\2\2\2)*\3\2\2\2*\3\3"+
		"\2\2\2+.\5\b\5\2,.\5\n\6\2-+\3\2\2\2-,\3\2\2\2./\3\2\2\2/\60\78\2\2\60"+
		"<\7\3\2\2\61\62\5\b\5\2\629\78\2\2\63\64\7\4\2\2\64\65\5\b\5\2\65\66\7"+
		"8\2\2\668\3\2\2\2\67\63\3\2\2\28;\3\2\2\29\67\3\2\2\29:\3\2\2\2:=\3\2"+
		"\2\2;9\3\2\2\2<\61\3\2\2\2<=\3\2\2\2=>\3\2\2\2>?\7\5\2\2?@\5\20\t\2@\5"+
		"\3\2\2\2AB\7\6\2\2BC\78\2\2CH\7\7\2\2DG\5\24\13\2EG\5\4\3\2FD\3\2\2\2"+
		"FE\3\2\2\2GJ\3\2\2\2HF\3\2\2\2HI\3\2\2\2IK\3\2\2\2JH\3\2\2\2KL\7\b\2\2"+
		"L\7\3\2\2\2MN\b\5\1\2NS\7\t\2\2OS\7\n\2\2PS\7\13\2\2QS\78\2\2RM\3\2\2"+
		"\2RO\3\2\2\2RP\3\2\2\2RQ\3\2\2\2SY\3\2\2\2TU\f\3\2\2UV\7\f\2\2VX\7\r\2"+
		"\2WT\3\2\2\2X[\3\2\2\2YW\3\2\2\2YZ\3\2\2\2Z\t\3\2\2\2[Y\3\2\2\2\\]\7\16"+
		"\2\2]\13\3\2\2\2^c\7\17\2\2_c\t\2\2\2`c\7\67\2\2ac\7\66\2\2b^\3\2\2\2"+
		"b_\3\2\2\2b`\3\2\2\2ba\3\2\2\2c\r\3\2\2\2dn\5\20\t\2en\5\22\n\2fn\5\24"+
		"\13\2gn\5\26\f\2hn\5\30\r\2in\5\32\16\2jn\5\34\17\2kn\5\36\20\2ln\5 \21"+
		"\2md\3\2\2\2me\3\2\2\2mf\3\2\2\2mg\3\2\2\2mh\3\2\2\2mi\3\2\2\2mj\3\2\2"+
		"\2mk\3\2\2\2ml\3\2\2\2n\17\3\2\2\2os\7\7\2\2pr\5\16\b\2qp\3\2\2\2ru\3"+
		"\2\2\2sq\3\2\2\2st\3\2\2\2tv\3\2\2\2us\3\2\2\2vw\7\b\2\2w\21\3\2\2\2x"+
		"z\5\"\22\2yx\3\2\2\2yz\3\2\2\2z{\3\2\2\2{|\7\22\2\2|\23\3\2\2\2}~\5\b"+
		"\5\2~\u0081\78\2\2\177\u0080\7\23\2\2\u0080\u0082\5\"\22\2\u0081\177\3"+
		"\2\2\2\u0081\u0082\3\2\2\2\u0082\u0083\3\2\2\2\u0083\u0084\7\22\2\2\u0084"+
		"\25\3\2\2\2\u0085\u0086\7\24\2\2\u0086\u0087\7\3\2\2\u0087\u0088\5\"\22"+
		"\2\u0088\u0089\7\5\2\2\u0089\u008c\5\16\b\2\u008a\u008b\7\25\2\2\u008b"+
		"\u008d\5\16\b\2\u008c\u008a\3\2\2\2\u008c\u008d\3\2\2\2\u008d\27\3\2\2"+
		"\2\u008e\u008f\7\26\2\2\u008f\u0091\7\3\2\2\u0090\u0092\5\"\22\2\u0091"+
		"\u0090\3\2\2\2\u0091\u0092\3\2\2\2\u0092\u0093\3\2\2\2\u0093\u0095\7\22"+
		"\2\2\u0094\u0096\5\"\22\2\u0095\u0094\3\2\2\2\u0095\u0096\3\2\2\2\u0096"+
		"\u0097\3\2\2\2\u0097\u0099\7\22\2\2\u0098\u009a\5\"\22\2\u0099\u0098\3"+
		"\2\2\2\u0099\u009a\3\2\2\2\u009a\u009b\3\2\2\2\u009b\u009c\7\5\2\2\u009c"+
		"\u009d\5\16\b\2\u009d\31\3\2\2\2\u009e\u009f\7\27\2\2\u009f\u00a1\7\3"+
		"\2\2\u00a0\u00a2\5\"\22\2\u00a1\u00a0\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2"+
		"\u00a3\3\2\2\2\u00a3\u00a4\7\5\2\2\u00a4\u00a5\5\16\b\2\u00a5\33\3\2\2"+
		"\2\u00a6\u00a7\7\30\2\2\u00a7\u00a8\7\22\2\2\u00a8\35\3\2\2\2\u00a9\u00aa"+
		"\7\31\2\2\u00aa\u00ab\7\22\2\2\u00ab\37\3\2\2\2\u00ac\u00ae\7\32\2\2\u00ad"+
		"\u00af\5\"\22\2\u00ae\u00ad\3\2\2\2\u00ae\u00af\3\2\2\2\u00af\u00b0\3"+
		"\2\2\2\u00b0\u00b1\7\22\2\2\u00b1!\3\2\2\2\u00b2\u00b3\b\22\1\2\u00b3"+
		"\u00ce\5\f\7\2\u00b4\u00ce\78\2\2\u00b5\u00b6\7\33\2\2\u00b6\u00bd\5\b"+
		"\5\2\u00b7\u00b8\7\f\2\2\u00b8\u00b9\5\"\22\2\u00b9\u00ba\7\r\2\2\u00ba"+
		"\u00bc\3\2\2\2\u00bb\u00b7\3\2\2\2\u00bc\u00bf\3\2\2\2\u00bd\u00bb\3\2"+
		"\2\2\u00bd\u00be\3\2\2\2\u00be\u00c4\3\2\2\2\u00bf\u00bd\3\2\2\2\u00c0"+
		"\u00c1\7\f\2\2\u00c1\u00c3\7\r\2\2\u00c2\u00c0\3\2\2\2\u00c3\u00c6\3\2"+
		"\2\2\u00c4\u00c2\3\2\2\2\u00c4\u00c5\3\2\2\2\u00c5\u00ce\3\2\2\2\u00c6"+
		"\u00c4\3\2\2\2\u00c7\u00c8\7\3\2\2\u00c8\u00c9\5\"\22\2\u00c9\u00ca\7"+
		"\5\2\2\u00ca\u00ce\3\2\2\2\u00cb\u00cc\t\3\2\2\u00cc\u00ce\5\"\22\16\u00cd"+
		"\u00b2\3\2\2\2\u00cd\u00b4\3\2\2\2\u00cd\u00b5\3\2\2\2\u00cd\u00c7\3\2"+
		"\2\2\u00cd\u00cb\3\2\2\2\u00ce\u0119\3\2\2\2\u00cf\u00d0\f\r\2\2\u00d0"+
		"\u00d1\t\4\2\2\u00d1\u0118\5\"\22\16\u00d2\u00d3\f\f\2\2\u00d3\u00d4\t"+
		"\5\2\2\u00d4\u0118\5\"\22\r\u00d5\u00d6\f\13\2\2\u00d6\u00d7\t\6\2\2\u00d7"+
		"\u0118\5\"\22\f\u00d8\u00d9\f\n\2\2\u00d9\u00da\t\7\2\2\u00da\u0118\5"+
		"\"\22\13\u00db\u00dc\f\t\2\2\u00dc\u00dd\t\b\2\2\u00dd\u0118\5\"\22\n"+
		"\u00de\u00df\f\b\2\2\u00df\u00e0\7.\2\2\u00e0\u0118\5\"\22\t\u00e1\u00e2"+
		"\f\7\2\2\u00e2\u00e3\7/\2\2\u00e3\u0118\5\"\22\b\u00e4\u00e5\f\6\2\2\u00e5"+
		"\u00e6\7\60\2\2\u00e6\u0118\5\"\22\7\u00e7\u00e8\f\5\2\2\u00e8\u00e9\7"+
		"\61\2\2\u00e9\u0118\5\"\22\6\u00ea\u00eb\f\4\2\2\u00eb\u00ec\7\62\2\2"+
		"\u00ec\u0118\5\"\22\5\u00ed\u00ee\f\3\2\2\u00ee\u00ef\7\23\2\2\u00ef\u0118"+
		"\5\"\22\3\u00f0\u00f1\f\22\2\2\u00f1\u00fa\7\3\2\2\u00f2\u00f7\5\"\22"+
		"\2\u00f3\u00f4\7\4\2\2\u00f4\u00f6\5\"\22\2\u00f5\u00f3\3\2\2\2\u00f6"+
		"\u00f9\3\2\2\2\u00f7\u00f5\3\2\2\2\u00f7\u00f8\3\2\2\2\u00f8\u00fb\3\2"+
		"\2\2\u00f9\u00f7\3\2\2\2\u00fa\u00f2\3\2\2\2\u00fa\u00fb\3\2\2\2\u00fb"+
		"\u00fc\3\2\2\2\u00fc\u0118\7\5\2\2\u00fd\u00fe\f\21\2\2\u00fe\u00ff\7"+
		"\f\2\2\u00ff\u0100\5\"\22\2\u0100\u0101\7\r\2\2\u0101\u0118\3\2\2\2\u0102"+
		"\u0103\f\20\2\2\u0103\u0113\7\34\2\2\u0104\u0114\78\2\2\u0105\u0106\5"+
		"\"\22\2\u0106\u010f\7\3\2\2\u0107\u010c\5\"\22\2\u0108\u0109\7\4\2\2\u0109"+
		"\u010b\5\"\22\2\u010a\u0108\3\2\2\2\u010b\u010e\3\2\2\2\u010c\u010a\3"+
		"\2\2\2\u010c\u010d\3\2\2\2\u010d\u0110\3\2\2\2\u010e\u010c\3\2\2\2\u010f"+
		"\u0107\3\2\2\2\u010f\u0110\3\2\2\2\u0110\u0111\3\2\2\2\u0111\u0112\7\5"+
		"\2\2\u0112\u0114\3\2\2\2\u0113\u0104\3\2\2\2\u0113\u0105\3\2\2\2\u0114"+
		"\u0118\3\2\2\2\u0115\u0116\f\17\2\2\u0116\u0118\t\t\2\2\u0117\u00cf\3"+
		"\2\2\2\u0117\u00d2\3\2\2\2\u0117\u00d5\3\2\2\2\u0117\u00d8\3\2\2\2\u0117"+
		"\u00db\3\2\2\2\u0117\u00de\3\2\2\2\u0117\u00e1\3\2\2\2\u0117\u00e4\3\2"+
		"\2\2\u0117\u00e7\3\2\2\2\u0117\u00ea\3\2\2\2\u0117\u00ed\3\2\2\2\u0117"+
		"\u00f0\3\2\2\2\u0117\u00fd\3\2\2\2\u0117\u0102\3\2\2\2\u0117\u0115\3\2"+
		"\2\2\u0118\u011b\3\2\2\2\u0119\u0117\3\2\2\2\u0119\u011a\3\2\2\2\u011a"+
		"#\3\2\2\2\u011b\u0119\3\2\2\2 \')-9<FHRYbmsy\u0081\u008c\u0091\u0095\u0099"+
		"\u00a1\u00ae\u00bd\u00c4\u00cd\u00f7\u00fa\u010c\u010f\u0113\u0117\u0119";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}