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
		T__45=46, T__46=47, T__47=48, T__48=49, BlockComment=50, LineComment=51, 
		BlankCharacter=52, Integer=53, String=54, Identifier=55;
	public static final int
		RULE_program = 0, RULE_functionDeclaration = 1, RULE_classDeclaration = 2, 
		RULE_type = 3, RULE_voidtype = 4, RULE_constant = 5, RULE_statement = 6, 
		RULE_blockStatement = 7, RULE_expressionStatement = 8, RULE_variableDeclaration = 9, 
		RULE_ifStatement = 10, RULE_forStatement = 11, RULE_whileStatement = 12, 
		RULE_continueStatement = 13, RULE_breakStatement = 14, RULE_returnStatement = 15, 
		RULE_thisToken = 16, RULE_expression = 17;
	public static final String[] ruleNames = {
		"program", "functionDeclaration", "classDeclaration", "type", "voidtype", 
		"constant", "statement", "blockStatement", "expressionStatement", "variableDeclaration", 
		"ifStatement", "forStatement", "whileStatement", "continueStatement", 
		"breakStatement", "returnStatement", "thisToken", "expression"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'('", "','", "')'", "'class'", "'{'", "'}'", "'int'", "'string'", 
		"'bool'", "'['", "']'", "'void'", "'null'", "'true'", "'false'", "';'", 
		"'='", "'if'", "'else'", "'for'", "'while'", "'continue'", "'break'", 
		"'return'", "'this'", "'new'", "'.'", "'++'", "'--'", "'+'", "'-'", "'~'", 
		"'!'", "'*'", "'/'", "'%'", "'<<'", "'>>'", "'<'", "'>'", "'<='", "'>='", 
		"'=='", "'!='", "'&'", "'^'", "'|'", "'&&'", "'||'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, "BlockComment", "LineComment", "BlankCharacter", "Integer", 
		"String", "Identifier"
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
			setState(39); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(39);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(36);
					functionDeclaration();
					}
					break;
				case 2:
					{
					setState(37);
					classDeclaration();
					}
					break;
				case 3:
					{
					setState(38);
					variableDeclaration();
					}
					break;
				}
				}
				setState(41); 
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
		public List<TerminalNode> Identifier() { return getTokens(MetaParser.Identifier); }
		public TerminalNode Identifier(int i) {
			return getToken(MetaParser.Identifier, i);
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
			setState(45);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__6:
			case T__7:
			case T__8:
			case Identifier:
				{
				setState(43);
				type(0);
				}
				break;
			case T__11:
				{
				setState(44);
				voidtype();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(48);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==Identifier) {
				{
				setState(47);
				match(Identifier);
				}
			}

			setState(50);
			match(T__0);
			setState(62);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << Identifier))) != 0)) {
				{
				setState(51);
				type(0);
				setState(52);
				match(Identifier);
				setState(59);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(53);
					match(T__1);
					setState(54);
					type(0);
					setState(55);
					match(Identifier);
					}
					}
					setState(61);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(64);
			match(T__2);
			setState(65);
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
			setState(67);
			match(T__3);
			setState(68);
			match(Identifier);
			setState(69);
			match(T__4);
			setState(74);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__11) | (1L << Identifier))) != 0)) {
				{
				setState(72);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
				case 1:
					{
					setState(70);
					variableDeclaration();
					}
					break;
				case 2:
					{
					setState(71);
					functionDeclaration();
					}
					break;
				}
				}
				setState(76);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(77);
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
			setState(84);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__6:
				{
				_localctx = new Integer_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(80);
				match(T__6);
				}
				break;
			case T__7:
				{
				_localctx = new String_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(81);
				match(T__7);
				}
				break;
			case T__8:
				{
				_localctx = new Bool_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(82);
				match(T__8);
				}
				break;
			case Identifier:
				{
				_localctx = new Class_TypeContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(83);
				match(Identifier);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(91);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Array_TypeContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(86);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(87);
					match(T__9);
					setState(88);
					match(T__10);
					}
					} 
				}
				setState(93);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
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
			setState(94);
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
			setState(100);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__12:
				_localctx = new Null_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(96);
				match(T__12);
				}
				break;
			case T__13:
			case T__14:
				_localctx = new Bool_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(97);
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
				setState(98);
				match(String);
				}
				break;
			case Integer:
				_localctx = new Integer_ConstantContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(99);
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
			setState(111);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(102);
				blockStatement();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(103);
				expressionStatement();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(104);
				variableDeclaration();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(105);
				ifStatement();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(106);
				forStatement();
				}
				break;
			case 6:
				enterOuterAlt(_localctx, 6);
				{
				setState(107);
				whileStatement();
				}
				break;
			case 7:
				enterOuterAlt(_localctx, 7);
				{
				setState(108);
				continueStatement();
				}
				break;
			case 8:
				enterOuterAlt(_localctx, 8);
				{
				setState(109);
				breakStatement();
				}
				break;
			case 9:
				enterOuterAlt(_localctx, 9);
				{
				setState(110);
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
			setState(113);
			match(T__4);
			setState(117);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__4) | (1L << T__6) | (1L << T__7) | (1L << T__8) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__17) | (1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__22) | (1L << T__23) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				{
				setState(114);
				statement();
				}
				}
				setState(119);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(120);
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
			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(122);
				expression(0);
				}
			}

			setState(125);
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
			setState(127);
			type(0);
			setState(128);
			match(Identifier);
			setState(131);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__16) {
				{
				setState(129);
				match(T__16);
				setState(130);
				expression(0);
				}
			}

			setState(133);
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
			setState(135);
			match(T__17);
			setState(136);
			match(T__0);
			setState(137);
			expression(0);
			setState(138);
			match(T__2);
			setState(139);
			statement();
			setState(142);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				{
				setState(140);
				match(T__18);
				setState(141);
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
			setState(144);
			match(T__19);
			setState(145);
			match(T__0);
			setState(147);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
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
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(150);
				expression(0);
				}
			}

			setState(153);
			match(T__15);
			setState(155);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(154);
				expression(0);
				}
			}

			setState(157);
			match(T__2);
			setState(158);
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
			setState(160);
			match(T__20);
			setState(161);
			match(T__0);
			setState(163);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(162);
				expression(0);
				}
			}

			setState(165);
			match(T__2);
			setState(166);
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
			setState(168);
			match(T__21);
			setState(169);
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
			setState(171);
			match(T__22);
			setState(172);
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
			setState(174);
			match(T__23);
			setState(176);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
				{
				setState(175);
				expression(0);
				}
			}

			setState(178);
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

	public static class ThisTokenContext extends ParserRuleContext {
		public ThisTokenContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_thisToken; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterThisToken(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitThisToken(this);
		}
	}

	public final ThisTokenContext thisToken() throws RecognitionException {
		ThisTokenContext _localctx = new ThisTokenContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_thisToken);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			match(T__24);
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
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
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
	public static class This_ExpressionContext extends ExpressionContext {
		public ThisTokenContext thisToken() {
			return getRuleContext(ThisTokenContext.class,0);
		}
		public This_ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).enterThis_Expression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MetaListener ) ((MetaListener)listener).exitThis_Expression(this);
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
		int _startState = 34;
		enterRecursionRule(_localctx, 34, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(208);
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

				setState(183);
				constant();
				}
				break;
			case Identifier:
				{
				_localctx = new Identifier_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(184);
				match(Identifier);
				}
				break;
			case T__24:
				{
				_localctx = new This_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(185);
				thisToken();
				}
				break;
			case T__25:
				{
				_localctx = new Creation_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(186);
				match(T__25);
				setState(187);
				type(0);
				setState(200);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
				case 1:
					{
					setState(195);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
					while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
						if ( _alt==1 ) {
							{
							{
							setState(188);
							match(T__9);
							setState(190);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
								{
								setState(189);
								expression(0);
								}
							}

							setState(192);
							match(T__10);
							}
							} 
						}
						setState(197);
						_errHandler.sync(this);
						_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
					}
					}
					break;
				case 2:
					{
					setState(198);
					match(T__0);
					setState(199);
					match(T__2);
					}
					break;
				}
				}
				break;
			case T__0:
				{
				_localctx = new Subgroup_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(202);
				match(T__0);
				setState(203);
				expression(0);
				setState(204);
				match(T__2);
				}
				break;
			case T__27:
			case T__28:
			case T__29:
			case T__30:
			case T__31:
			case T__32:
				{
				_localctx = new Prefix_ExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(206);
				((Prefix_ExpressionContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32))) != 0)) ) {
					((Prefix_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
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
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(268);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(266);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
					case 1:
						{
						_localctx = new Mul_Div_Mod_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(210);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(211);
						((Mul_Div_Mod_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__33) | (1L << T__34) | (1L << T__35))) != 0)) ) {
							((Mul_Div_Mod_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(212);
						expression(12);
						}
						break;
					case 2:
						{
						_localctx = new Add_Sub_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(213);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(214);
						((Add_Sub_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__29 || _la==T__30) ) {
							((Add_Sub_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(215);
						expression(11);
						}
						break;
					case 3:
						{
						_localctx = new Shift_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(216);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(217);
						((Shift_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__36 || _la==T__37) ) {
							((Shift_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(218);
						expression(10);
						}
						break;
					case 4:
						{
						_localctx = new Relation_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(219);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(220);
						((Relation_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__38) | (1L << T__39) | (1L << T__40) | (1L << T__41))) != 0)) ) {
							((Relation_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(221);
						expression(9);
						}
						break;
					case 5:
						{
						_localctx = new Equality_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(222);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(223);
						((Equality_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__42 || _la==T__43) ) {
							((Equality_ExpressionContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(224);
						expression(8);
						}
						break;
					case 6:
						{
						_localctx = new Bit_And_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(225);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(226);
						match(T__44);
						setState(227);
						expression(7);
						}
						break;
					case 7:
						{
						_localctx = new Bit_Xor_ExpreeeionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(228);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(229);
						match(T__45);
						setState(230);
						expression(6);
						}
						break;
					case 8:
						{
						_localctx = new Bit_or_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(231);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(232);
						match(T__46);
						setState(233);
						expression(5);
						}
						break;
					case 9:
						{
						_localctx = new Logical_And_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(234);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(235);
						match(T__47);
						setState(236);
						expression(4);
						}
						break;
					case 10:
						{
						_localctx = new Logical_Or_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(237);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(238);
						match(T__48);
						setState(239);
						expression(3);
						}
						break;
					case 11:
						{
						_localctx = new Assignment_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(240);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(241);
						match(T__16);
						setState(242);
						expression(1);
						}
						break;
					case 12:
						{
						_localctx = new Function_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(243);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(244);
						match(T__0);
						setState(253);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__24) | (1L << T__25) | (1L << T__27) | (1L << T__28) | (1L << T__29) | (1L << T__30) | (1L << T__31) | (1L << T__32) | (1L << Integer) | (1L << String) | (1L << Identifier))) != 0)) {
							{
							setState(245);
							expression(0);
							setState(250);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(246);
								match(T__1);
								setState(247);
								expression(0);
								}
								}
								setState(252);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(255);
						match(T__2);
						}
						break;
					case 13:
						{
						_localctx = new Array_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(256);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(257);
						match(T__9);
						setState(258);
						expression(0);
						setState(259);
						match(T__10);
						}
						break;
					case 14:
						{
						_localctx = new Member_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(261);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(262);
						match(T__26);
						setState(263);
						match(Identifier);
						}
						break;
					case 15:
						{
						_localctx = new Suffix_ExpressionContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(264);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(265);
						((Suffix_ExpressionContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__27 || _la==T__28) ) {
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
				setState(270);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
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
		case 17:
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
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\39\u0112\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\3\2\3\2\3\2\6\2*\n\2\r\2\16\2+\3\3\3\3\5\3\60\n\3\3\3\5\3\63"+
		"\n\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\7\3<\n\3\f\3\16\3?\13\3\5\3A\n\3\3\3"+
		"\3\3\3\3\3\4\3\4\3\4\3\4\3\4\7\4K\n\4\f\4\16\4N\13\4\3\4\3\4\3\5\3\5\3"+
		"\5\3\5\3\5\5\5W\n\5\3\5\3\5\3\5\7\5\\\n\5\f\5\16\5_\13\5\3\6\3\6\3\7\3"+
		"\7\3\7\3\7\5\7g\n\7\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\5\br\n\b\3\t\3"+
		"\t\7\tv\n\t\f\t\16\ty\13\t\3\t\3\t\3\n\5\n~\n\n\3\n\3\n\3\13\3\13\3\13"+
		"\3\13\5\13\u0086\n\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u0091"+
		"\n\f\3\r\3\r\3\r\5\r\u0096\n\r\3\r\3\r\5\r\u009a\n\r\3\r\3\r\5\r\u009e"+
		"\n\r\3\r\3\r\3\r\3\16\3\16\3\16\5\16\u00a6\n\16\3\16\3\16\3\16\3\17\3"+
		"\17\3\17\3\20\3\20\3\20\3\21\3\21\5\21\u00b3\n\21\3\21\3\21\3\22\3\22"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\5\23\u00c1\n\23\3\23\7\23\u00c4"+
		"\n\23\f\23\16\23\u00c7\13\23\3\23\3\23\5\23\u00cb\n\23\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\5\23\u00d3\n\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23"+
		"\3\23\3\23\7\23\u00fb\n\23\f\23\16\23\u00fe\13\23\5\23\u0100\n\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\7\23\u010d\n\23\f\23"+
		"\16\23\u0110\13\23\3\23\2\4\b$\24\2\4\6\b\n\f\16\20\22\24\26\30\32\34"+
		"\36 \"$\2\n\3\2\20\21\3\2\36#\3\2$&\3\2 !\3\2\'(\3\2),\3\2-.\3\2\36\37"+
		"\u0139\2)\3\2\2\2\4/\3\2\2\2\6E\3\2\2\2\bV\3\2\2\2\n`\3\2\2\2\ff\3\2\2"+
		"\2\16q\3\2\2\2\20s\3\2\2\2\22}\3\2\2\2\24\u0081\3\2\2\2\26\u0089\3\2\2"+
		"\2\30\u0092\3\2\2\2\32\u00a2\3\2\2\2\34\u00aa\3\2\2\2\36\u00ad\3\2\2\2"+
		" \u00b0\3\2\2\2\"\u00b6\3\2\2\2$\u00d2\3\2\2\2&*\5\4\3\2\'*\5\6\4\2(*"+
		"\5\24\13\2)&\3\2\2\2)\'\3\2\2\2)(\3\2\2\2*+\3\2\2\2+)\3\2\2\2+,\3\2\2"+
		"\2,\3\3\2\2\2-\60\5\b\5\2.\60\5\n\6\2/-\3\2\2\2/.\3\2\2\2\60\62\3\2\2"+
		"\2\61\63\79\2\2\62\61\3\2\2\2\62\63\3\2\2\2\63\64\3\2\2\2\64@\7\3\2\2"+
		"\65\66\5\b\5\2\66=\79\2\2\678\7\4\2\289\5\b\5\29:\79\2\2:<\3\2\2\2;\67"+
		"\3\2\2\2<?\3\2\2\2=;\3\2\2\2=>\3\2\2\2>A\3\2\2\2?=\3\2\2\2@\65\3\2\2\2"+
		"@A\3\2\2\2AB\3\2\2\2BC\7\5\2\2CD\5\20\t\2D\5\3\2\2\2EF\7\6\2\2FG\79\2"+
		"\2GL\7\7\2\2HK\5\24\13\2IK\5\4\3\2JH\3\2\2\2JI\3\2\2\2KN\3\2\2\2LJ\3\2"+
		"\2\2LM\3\2\2\2MO\3\2\2\2NL\3\2\2\2OP\7\b\2\2P\7\3\2\2\2QR\b\5\1\2RW\7"+
		"\t\2\2SW\7\n\2\2TW\7\13\2\2UW\79\2\2VQ\3\2\2\2VS\3\2\2\2VT\3\2\2\2VU\3"+
		"\2\2\2W]\3\2\2\2XY\f\3\2\2YZ\7\f\2\2Z\\\7\r\2\2[X\3\2\2\2\\_\3\2\2\2]"+
		"[\3\2\2\2]^\3\2\2\2^\t\3\2\2\2_]\3\2\2\2`a\7\16\2\2a\13\3\2\2\2bg\7\17"+
		"\2\2cg\t\2\2\2dg\78\2\2eg\7\67\2\2fb\3\2\2\2fc\3\2\2\2fd\3\2\2\2fe\3\2"+
		"\2\2g\r\3\2\2\2hr\5\20\t\2ir\5\22\n\2jr\5\24\13\2kr\5\26\f\2lr\5\30\r"+
		"\2mr\5\32\16\2nr\5\34\17\2or\5\36\20\2pr\5 \21\2qh\3\2\2\2qi\3\2\2\2q"+
		"j\3\2\2\2qk\3\2\2\2ql\3\2\2\2qm\3\2\2\2qn\3\2\2\2qo\3\2\2\2qp\3\2\2\2"+
		"r\17\3\2\2\2sw\7\7\2\2tv\5\16\b\2ut\3\2\2\2vy\3\2\2\2wu\3\2\2\2wx\3\2"+
		"\2\2xz\3\2\2\2yw\3\2\2\2z{\7\b\2\2{\21\3\2\2\2|~\5$\23\2}|\3\2\2\2}~\3"+
		"\2\2\2~\177\3\2\2\2\177\u0080\7\22\2\2\u0080\23\3\2\2\2\u0081\u0082\5"+
		"\b\5\2\u0082\u0085\79\2\2\u0083\u0084\7\23\2\2\u0084\u0086\5$\23\2\u0085"+
		"\u0083\3\2\2\2\u0085\u0086\3\2\2\2\u0086\u0087\3\2\2\2\u0087\u0088\7\22"+
		"\2\2\u0088\25\3\2\2\2\u0089\u008a\7\24\2\2\u008a\u008b\7\3\2\2\u008b\u008c"+
		"\5$\23\2\u008c\u008d\7\5\2\2\u008d\u0090\5\16\b\2\u008e\u008f\7\25\2\2"+
		"\u008f\u0091\5\16\b\2\u0090\u008e\3\2\2\2\u0090\u0091\3\2\2\2\u0091\27"+
		"\3\2\2\2\u0092\u0093\7\26\2\2\u0093\u0095\7\3\2\2\u0094\u0096\5$\23\2"+
		"\u0095\u0094\3\2\2\2\u0095\u0096\3\2\2\2\u0096\u0097\3\2\2\2\u0097\u0099"+
		"\7\22\2\2\u0098\u009a\5$\23\2\u0099\u0098\3\2\2\2\u0099\u009a\3\2\2\2"+
		"\u009a\u009b\3\2\2\2\u009b\u009d\7\22\2\2\u009c\u009e\5$\23\2\u009d\u009c"+
		"\3\2\2\2\u009d\u009e\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u00a0\7\5\2\2\u00a0"+
		"\u00a1\5\16\b\2\u00a1\31\3\2\2\2\u00a2\u00a3\7\27\2\2\u00a3\u00a5\7\3"+
		"\2\2\u00a4\u00a6\5$\23\2\u00a5\u00a4\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6"+
		"\u00a7\3\2\2\2\u00a7\u00a8\7\5\2\2\u00a8\u00a9\5\16\b\2\u00a9\33\3\2\2"+
		"\2\u00aa\u00ab\7\30\2\2\u00ab\u00ac\7\22\2\2\u00ac\35\3\2\2\2\u00ad\u00ae"+
		"\7\31\2\2\u00ae\u00af\7\22\2\2\u00af\37\3\2\2\2\u00b0\u00b2\7\32\2\2\u00b1"+
		"\u00b3\5$\23\2\u00b2\u00b1\3\2\2\2\u00b2\u00b3\3\2\2\2\u00b3\u00b4\3\2"+
		"\2\2\u00b4\u00b5\7\22\2\2\u00b5!\3\2\2\2\u00b6\u00b7\7\33\2\2\u00b7#\3"+
		"\2\2\2\u00b8\u00b9\b\23\1\2\u00b9\u00d3\5\f\7\2\u00ba\u00d3\79\2\2\u00bb"+
		"\u00d3\5\"\22\2\u00bc\u00bd\7\34\2\2\u00bd\u00ca\5\b\5\2\u00be\u00c0\7"+
		"\f\2\2\u00bf\u00c1\5$\23\2\u00c0\u00bf\3\2\2\2\u00c0\u00c1\3\2\2\2\u00c1"+
		"\u00c2\3\2\2\2\u00c2\u00c4\7\r\2\2\u00c3\u00be\3\2\2\2\u00c4\u00c7\3\2"+
		"\2\2\u00c5\u00c3\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\u00cb\3\2\2\2\u00c7"+
		"\u00c5\3\2\2\2\u00c8\u00c9\7\3\2\2\u00c9\u00cb\7\5\2\2\u00ca\u00c5\3\2"+
		"\2\2\u00ca\u00c8\3\2\2\2\u00cb\u00d3\3\2\2\2\u00cc\u00cd\7\3\2\2\u00cd"+
		"\u00ce\5$\23\2\u00ce\u00cf\7\5\2\2\u00cf\u00d3\3\2\2\2\u00d0\u00d1\t\3"+
		"\2\2\u00d1\u00d3\5$\23\16\u00d2\u00b8\3\2\2\2\u00d2\u00ba\3\2\2\2\u00d2"+
		"\u00bb\3\2\2\2\u00d2\u00bc\3\2\2\2\u00d2\u00cc\3\2\2\2\u00d2\u00d0\3\2"+
		"\2\2\u00d3\u010e\3\2\2\2\u00d4\u00d5\f\r\2\2\u00d5\u00d6\t\4\2\2\u00d6"+
		"\u010d\5$\23\16\u00d7\u00d8\f\f\2\2\u00d8\u00d9\t\5\2\2\u00d9\u010d\5"+
		"$\23\r\u00da\u00db\f\13\2\2\u00db\u00dc\t\6\2\2\u00dc\u010d\5$\23\f\u00dd"+
		"\u00de\f\n\2\2\u00de\u00df\t\7\2\2\u00df\u010d\5$\23\13\u00e0\u00e1\f"+
		"\t\2\2\u00e1\u00e2\t\b\2\2\u00e2\u010d\5$\23\n\u00e3\u00e4\f\b\2\2\u00e4"+
		"\u00e5\7/\2\2\u00e5\u010d\5$\23\t\u00e6\u00e7\f\7\2\2\u00e7\u00e8\7\60"+
		"\2\2\u00e8\u010d\5$\23\b\u00e9\u00ea\f\6\2\2\u00ea\u00eb\7\61\2\2\u00eb"+
		"\u010d\5$\23\7\u00ec\u00ed\f\5\2\2\u00ed\u00ee\7\62\2\2\u00ee\u010d\5"+
		"$\23\6\u00ef\u00f0\f\4\2\2\u00f0\u00f1\7\63\2\2\u00f1\u010d\5$\23\5\u00f2"+
		"\u00f3\f\3\2\2\u00f3\u00f4\7\23\2\2\u00f4\u010d\5$\23\3\u00f5\u00f6\f"+
		"\22\2\2\u00f6\u00ff\7\3\2\2\u00f7\u00fc\5$\23\2\u00f8\u00f9\7\4\2\2\u00f9"+
		"\u00fb\5$\23\2\u00fa\u00f8\3\2\2\2\u00fb\u00fe\3\2\2\2\u00fc\u00fa\3\2"+
		"\2\2\u00fc\u00fd\3\2\2\2\u00fd\u0100\3\2\2\2\u00fe\u00fc\3\2\2\2\u00ff"+
		"\u00f7\3\2\2\2\u00ff\u0100\3\2\2\2\u0100\u0101\3\2\2\2\u0101\u010d\7\5"+
		"\2\2\u0102\u0103\f\21\2\2\u0103\u0104\7\f\2\2\u0104\u0105\5$\23\2\u0105"+
		"\u0106\7\r\2\2\u0106\u010d\3\2\2\2\u0107\u0108\f\20\2\2\u0108\u0109\7"+
		"\35\2\2\u0109\u010d\79\2\2\u010a\u010b\f\17\2\2\u010b\u010d\t\t\2\2\u010c"+
		"\u00d4\3\2\2\2\u010c\u00d7\3\2\2\2\u010c\u00da\3\2\2\2\u010c\u00dd\3\2"+
		"\2\2\u010c\u00e0\3\2\2\2\u010c\u00e3\3\2\2\2\u010c\u00e6\3\2\2\2\u010c"+
		"\u00e9\3\2\2\2\u010c\u00ec\3\2\2\2\u010c\u00ef\3\2\2\2\u010c\u00f2\3\2"+
		"\2\2\u010c\u00f5\3\2\2\2\u010c\u0102\3\2\2\2\u010c\u0107\3\2\2\2\u010c"+
		"\u010a\3\2\2\2\u010d\u0110\3\2\2\2\u010e\u010c\3\2\2\2\u010e\u010f\3\2"+
		"\2\2\u010f%\3\2\2\2\u0110\u010e\3\2\2\2\37)+/\62=@JLV]fqw}\u0085\u0090"+
		"\u0095\u0099\u009d\u00a5\u00b2\u00c0\u00c5\u00ca\u00d2\u00fc\u00ff\u010c"+
		"\u010e";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}