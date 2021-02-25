// Generated from com/nexler/nx/interpreter/nexler.g4 by ANTLR 4.5.1
package com.nexler.nx.interpreter;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class nexlerLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.5.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, POGRAM=3, VAR=4, PRINTLN=5, PLUS=6, MINUS=7, MULT=8, DIV=9, 
		AND=10, OR=11, NOT=12, GT=13, LT=14, GEQ=15, LEQ=16, EQ=17, NEQ=18, ASSIGN=19, 
		BRACKET_OPEN=20, BRACKET_CLOSE=21, PAR_CLOSE=22, PAR_OPEN=23, SEMICOLON=24, 
		ID=25, NUMBER=26, WS=27;
	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "POGRAM", "VAR", "PRINTLN", "PLUS", "MINUS", "MULT", "DIV", 
		"AND", "OR", "NOT", "GT", "LT", "GEQ", "LEQ", "EQ", "NEQ", "ASSIGN", "BRACKET_OPEN", 
		"BRACKET_CLOSE", "PAR_CLOSE", "PAR_OPEN", "SEMICOLON", "ID", "NUMBER", 
		"WS"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'hello'", "'world'", "'program'", "'var'", "'println'", "'+'", 
		"'-'", "'*'", "'/'", "'&&'", "'||'", "'!'", "'>'", "'<'", "'>='", "'<='", 
		"'=='", "'!='", "'='", "'{'", "'}'", "')'", "'('", "';'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, "POGRAM", "VAR", "PRINTLN", "PLUS", "MINUS", "MULT", 
		"DIV", "AND", "OR", "NOT", "GT", "LT", "GEQ", "LEQ", "EQ", "NEQ", "ASSIGN", 
		"BRACKET_OPEN", "BRACKET_CLOSE", "PAR_CLOSE", "PAR_OPEN", "SEMICOLON", 
		"ID", "NUMBER", "WS"
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


	public nexlerLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "nexler.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2\35\u0098\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3"+
		"\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\6\3\6"+
		"\3\6\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3\13\3\13"+
		"\3\f\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\20\3\21\3\21\3\21"+
		"\3\22\3\22\3\22\3\23\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3\26\3\27\3\27"+
		"\3\30\3\30\3\31\3\31\3\32\3\32\7\32\u0088\n\32\f\32\16\32\u008b\13\32"+
		"\3\33\6\33\u008e\n\33\r\33\16\33\u008f\3\34\6\34\u0093\n\34\r\34\16\34"+
		"\u0094\3\34\3\34\2\2\35\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f"+
		"\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63"+
		"\33\65\34\67\35\3\2\6\5\2C\\aac|\4\2\62;C|\3\2\62;\5\2\13\f\17\17\"\""+
		"\u009a\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2"+
		"\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3"+
		"\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2"+
		"\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2"+
		"/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\39\3\2\2"+
		"\2\5?\3\2\2\2\7E\3\2\2\2\tM\3\2\2\2\13Q\3\2\2\2\rY\3\2\2\2\17[\3\2\2\2"+
		"\21]\3\2\2\2\23_\3\2\2\2\25a\3\2\2\2\27d\3\2\2\2\31g\3\2\2\2\33i\3\2\2"+
		"\2\35k\3\2\2\2\37m\3\2\2\2!p\3\2\2\2#s\3\2\2\2%v\3\2\2\2\'y\3\2\2\2){"+
		"\3\2\2\2+}\3\2\2\2-\177\3\2\2\2/\u0081\3\2\2\2\61\u0083\3\2\2\2\63\u0085"+
		"\3\2\2\2\65\u008d\3\2\2\2\67\u0092\3\2\2\29:\7j\2\2:;\7g\2\2;<\7n\2\2"+
		"<=\7n\2\2=>\7q\2\2>\4\3\2\2\2?@\7y\2\2@A\7q\2\2AB\7t\2\2BC\7n\2\2CD\7"+
		"f\2\2D\6\3\2\2\2EF\7r\2\2FG\7t\2\2GH\7q\2\2HI\7i\2\2IJ\7t\2\2JK\7c\2\2"+
		"KL\7o\2\2L\b\3\2\2\2MN\7x\2\2NO\7c\2\2OP\7t\2\2P\n\3\2\2\2QR\7r\2\2RS"+
		"\7t\2\2ST\7k\2\2TU\7p\2\2UV\7v\2\2VW\7n\2\2WX\7p\2\2X\f\3\2\2\2YZ\7-\2"+
		"\2Z\16\3\2\2\2[\\\7/\2\2\\\20\3\2\2\2]^\7,\2\2^\22\3\2\2\2_`\7\61\2\2"+
		"`\24\3\2\2\2ab\7(\2\2bc\7(\2\2c\26\3\2\2\2de\7~\2\2ef\7~\2\2f\30\3\2\2"+
		"\2gh\7#\2\2h\32\3\2\2\2ij\7@\2\2j\34\3\2\2\2kl\7>\2\2l\36\3\2\2\2mn\7"+
		"@\2\2no\7?\2\2o \3\2\2\2pq\7>\2\2qr\7?\2\2r\"\3\2\2\2st\7?\2\2tu\7?\2"+
		"\2u$\3\2\2\2vw\7#\2\2wx\7?\2\2x&\3\2\2\2yz\7?\2\2z(\3\2\2\2{|\7}\2\2|"+
		"*\3\2\2\2}~\7\177\2\2~,\3\2\2\2\177\u0080\7+\2\2\u0080.\3\2\2\2\u0081"+
		"\u0082\7*\2\2\u0082\60\3\2\2\2\u0083\u0084\7=\2\2\u0084\62\3\2\2\2\u0085"+
		"\u0089\t\2\2\2\u0086\u0088\t\3\2\2\u0087\u0086\3\2\2\2\u0088\u008b\3\2"+
		"\2\2\u0089\u0087\3\2\2\2\u0089\u008a\3\2\2\2\u008a\64\3\2\2\2\u008b\u0089"+
		"\3\2\2\2\u008c\u008e\t\4\2\2\u008d\u008c\3\2\2\2\u008e\u008f\3\2\2\2\u008f"+
		"\u008d\3\2\2\2\u008f\u0090\3\2\2\2\u0090\66\3\2\2\2\u0091\u0093\t\5\2"+
		"\2\u0092\u0091\3\2\2\2\u0093\u0094\3\2\2\2\u0094\u0092\3\2\2\2\u0094\u0095"+
		"\3\2\2\2\u0095\u0096\3\2\2\2\u0096\u0097\b\34\2\2\u00978\3\2\2\2\6\2\u0089"+
		"\u008f\u0094\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}