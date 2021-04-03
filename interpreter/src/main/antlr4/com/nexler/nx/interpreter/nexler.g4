grammar nexler;

/* REGLAS DE PRODUCCIÓN */

main: PROGRAM ID BRACKET_OPEN 
    sentence*
    BRACKET_CLOSE;
    
sentence: boolean_decl | char_decl | double_decl | int_decl | short_decl | string_decl | boolean_assign | char_assign | double_assign | int_assign | short_assign | string_assign | boolean_cin | char_cin | double_cin | int_cin | short_cin | string_cin | line_comment;

//Declarar variables
boolean_decl: BOOLEAN ID SEMICOLON
		{System.out.println("\nDeclarando variable boolean... "+ $ID.text);};

char_decl: CHAR ID SEMICOLON
		{System.out.println("\nDeclarando variable char... "+ $ID.text);};

double_decl: DOUBLE ID SEMICOLON
		{System.out.println("\nDeclarando variable double... "+ $ID.text);};

int_decl: INT ID SEMICOLON
		{System.out.println("\nDeclarando variable int... "+ $ID.text);};

short_decl: SHORT ID SEMICOLON
		{System.out.println("\nDeclarando variable short... "+ $ID.text);};

string_decl: STRING ID SEMICOLON
		{System.out.println("\nDeclarando variable string... "+ $ID.text);};
		
//Asignar variables
boolean_assign: ID ASSIGN BOOL SEMICOLON
		{System.out.println("Asignando valor a boolean... " + $BOOL.text);};

char_assign: ID ASSIGN CHAR_DT SEMICOLON
		{System.out.println("Asignando valor a char... " + $CHAR_DT.text);};

double_assign: ID ASSIGN DOUBLE_DT SEMICOLON
		{System.out.println("Asignando valor a double... " + $DOUBLE_DT.text);};

int_assign: ID ASSIGN INT_DT SEMICOLON
		{System.out.println("Asignando valor a int... " + $INT_DT.text);};

short_assign: ID ASSIGN SHORT_DT SEMICOLON
		{System.out.println("Asignando valor a short... " + $SHORT_DT.text);};

string_assign: ID ASSIGN STRING_DT SEMICOLON
		{System.out.println("Asignando valor a string... " + $STRING_DT.text);};
		
//Mostrar en pantalla
boolean_cin: PRINTLN PAR_OPEN BOOL PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable boolean... " + $BOOL.text);};

char_cin: PRINTLN PAR_OPEN CHAR_DT PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable char... " + $CHAR_DT.text);};

double_cin: PRINTLN PAR_OPEN DOUBLE_DT PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable double... " + $DOUBLE_DT.text);};

int_cin: PRINTLN PAR_OPEN INT_DT PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable int... " + $INT_DT.text);};

short_cin: PRINTLN PAR_OPEN SHORT_DT PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable short... " + $SHORT_DT.text);};

string_cin: PRINTLN PAR_OPEN STRING_DT PAR_CLOSE SEMICOLON
		{System.out.println("Imprimiendo variable string... " + $STRING_DT.text);};
		
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
CHAR_DT: '"'[a-zA-Z]+'"';
DOUBLE_DT: [0-9]+;
INT_DT : [0-9]+;
SHORT_DT: [0-9];
STRING_DT: '\''[a-zA-Z]'\'';
