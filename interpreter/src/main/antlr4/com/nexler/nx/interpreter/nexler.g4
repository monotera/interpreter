grammar nexler;

/* REGLAS DE PRODUCCIÓN */
@parser::header{
	import java.util.Map;
	import java.util.HashMap;
	import java.util.List;
	import java.util.ArrayList;
	import com.nexler.nx.interpreter.ast.*;
}

@parser::members {
	Map<String, Object> symbolTable = new HashMap<String, Object>();
}

main: PROGRAM ID BRACKET_OPEN
	{
		List<ASTNode> body = new ArrayList<ASTNode>();
		Map<String, Object> symbolTable = new HashMap<String,Object>();
	}
    (sentence {body.add($sentence.node);})*
    BRACKET_CLOSE
    {
    	for(ASTNode n: body){
    		n.execute(symbolTable);
    	}
    };
    
//Sentencias
sentence returns [ASTNode node]: println {$node = $println.node;} 
				| conditional {$node = $conditional.node;}
				| var_decl {$node = $var_decl.node;}
				| var_assign {$node = $var_assign.node;}
				| line_comment
				;

//Mostrar en pantalla

println returns [ASTNode node]: PRINTLN PAR_OPEN expression PAR_CLOSE SEMICOLON
		{$node = new PrintLn($expression.node)};
		
//Condicional
conditional returns [ASTNode node]: IF PAR_OPEN expression PAR_CLOSE
	{
		List<ASTNode> body = new ArrayList<ASTNode>();
	}
	BRACKET_OPEN (s1=sentence {body.add($s1.node);})* BRACKET_CLOSE 
	ELSE 
	{
		List<ASTNode> elseBody = new ArrayList<ASTNode>();
	}
	BRACKET_OPEN (s2=sentence {elseBody.add($s2.node);})* BRACKET_CLOSE
	{$node = new If($expression.node, body, elseBody)};
	
var_decl returns [ASTNode node]:
	VAR ID SEMICOLON {$node = new VarDecl($ID.text);}
;
var_assign returns [ASTNode node]:
	ID ASSIGN expression SEMICOLON {$node = new VarAssign($ID.text, $expression.node);}
;
		
//Expresiones
expression returns [ASTNode node]:
			t1 = factor {$node = $t1.node}	
				(PLUS t2 = factor {$node = new Addition($node, $t2.node);})*
			(MINUS t2 = factor {$node = new Addition($node, $t2.node);})*;
			
factor returns [ASTNode node]: 
			t1 = term {$node = $t1.node;}	
				(MULT t2 = term {$node = new Multiplication($node, $t2.node);})*
			(DIV t2 = term {$node = new Addition($node, $t2.node);})*;
			
term returns [ASTNode node]: 
			BOOL {$node = new Constant(Boolean.parseBoolean($BOOL.text));}	
			| CHAR_DT {$node = new Constant($CHAR_DT.text.charAt(1));}	
			| INT_DT {$node = new Constant(Integer.parseInt($INT_DT.text));}	
			| SHORT_DT {$node = new Constant(Short.parseShort($SHORT_DT.text));}
			| STRING_DT {$node = new Constant(String.valueOf($STRING_DT.text).substring( 1, String.valueOf($STRING_DT.text).length() - 1 ));}
			| ID {$node = new VarRef($ID.text);}		
			| PAR_OPEN expression {$node = $expression.node;} PAR_CLOSE;
		

		
//Comentarios
line_comment: LINE_COMMENT ID;


/* DEFINICION DE TOKENS DEL LENGUAJE */

//Palabras reservadas
PROGRAM: 'main';
PRINTLN: 'cout';
BRACKET_OPEN: '{';
BRACKET_CLOSE: '}';
PAR_CLOSE: ')';
PAR_OPEN: '(';
SEMICOLON: ';';
WS : [ \t\n\r]+ -> skip;
BREAK: 'break';
CONTINUE: 'continue';
RETURN: 'return';
ARRAY:'['(ARRAY)']';
NULL: 'Null';
UNSIGNED: 'unsigned';
LINE_COMMENT
	: '//' ~[\r\n]* -> channel(HIDDEN)
	;
//LQUOTE : '\'\'' -> more, mode(STR) ;


//Operadores aritméticos
PLUS: '+';
MINUS: '-';
MULT: '*';
DIV: '/';


//Operadores lógicos
AND: '&&';
OR:'||';
NOT: '~';

//Operadores de comparación
GT: '>';
LT: '<'; 
GEQ: '>=';
LEQ: '<='; 
EQ: '==';
NEQ: '!=';

BOOL: 'true' | 'false';
//Tipos de datos numéricos, enteros y reales y cadenas de caracteres
VAR: 'var';

//Condicionales de la forma “si (expresión) {sentencias…} sino {sentencias...)
WHILE: 'while';
IF: 'if';
ELSE: 'else';
FOR: 'for';


//Declaración, asignación de valores y lectura de variables
ASSIGN: '=';
ID: [a-zA-Z_][a-zA-z0-9_]*;
CHAR_DT: '\''[a-zA-Z]'\'';
INT_DT : [0-9]+;
SHORT_DT: [0-9];
STRING_DT: '"'[a-zA-Z- ]+'"';
