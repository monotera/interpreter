grammar nexler;

/* REGLAS DE PRODUCCIÓN */
@parser::header{
	import java.util.Map;
	import java.util.HashMap;
}

@parser::members {
	Map<String, Object> symbolTable = new HashMap<String, Object>();
}

main: PROGRAM ID BRACKET_OPEN 
    sentence*
    BRACKET_CLOSE;
    
//Sentencias
sentence: boolean_decl | char_decl | double_decl | int_decl | short_decl | string_decl | var_assign | println | line_comment;

//Declarar variables
boolean_decl: BOOLEAN ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};

char_decl: CHAR ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};

double_decl: DOUBLE ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};

int_decl: INT ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};

short_decl: SHORT ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};

string_decl: STRING ID SEMICOLON
		{
			System.out.println ("Declarando " + $ID.text);
			symbolTable.put($ID.text, 0);
		};
		
//Asignar variables
var_assign: ID ASSIGN expression SEMICOLON
		{
			System.out.println ("Asignando " + $expression.value + " a la variable: " + $ID.text);
			symbolTable.put($ID.text, $expression.value);
		};
		
//Mostrar en pantalla

println: PRINTLN PAR_OPEN expression PAR_CLOSE SEMICOLON
		{
			System.out.println ("Imprimiendo el contenido de la variable "+ $expression.text +" : " + $expression.value);
		};
		
//Expresiones
expression returns [Object value]:
			t1 = factor {
				$value = (int) $t1.value;
			}
				(PLUS t2 = factor {
				$value = (int)$value + (int)$t2.value;
			})*;
factor returns [Object value]: t1 = term {
				$value = (int) $t1.value;
			}
				(MULT t2 = factor {
				$value = (int)$value + (int)$t2.value;
			})*;
			
term returns [Object value]: BOOL {
				$value = Boolean.parseBoolean($BOOL.text);
			}	| 
			CHAR_DT {
				$value = $CHAR_DT.text.charAt(1);
			}	| 
			INT_DT {
				$value = Integer.parseInt($INT_DT.text);
			}	| 
			SHORT_DT {
				$value = Short.parseShort($SHORT_DT.text);
			}	| 
			STRING_DT {
				$value = String.valueOf($STRING_DT.text).substring( 1, String.valueOf($STRING_DT.text).length() - 1 ); 
			}	| 
			ID { 
				$value = symbolTable.get($ID.text);
			};
		
		
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

//Evaluación de expresiones matemáticas, lógicas y de comparación
FALSE: 'False';
TRUE: 'True';


//Tipos de datos numéricos, enteros y reales y cadenas de caracteres
BOOLEAN: 'bool';
CHAR: 'char';
DOUBLE : 'double';
INT : 'int';
SHORT: 'short';
STRING : 'string';

//Condicionales de la forma “si (expresión) {sentencias…} sino {sentencias...)
WHILE: 'while';
IF: 'if';
ELSE: 'else';
FOR: 'for';


//Declaración, asignación de valores y lectura de variables
ASSIGN: '=';
ID: [a-zA-Z_][a-zA-z0-9_]*;
BOOL: TRUE | FALSE;
CHAR_DT: '\''[a-zA-Z]'\'';

INT_DT : [0-9]+;
SHORT_DT: [0-9];
STRING_DT: '"'[a-zA-Z]+'"';
