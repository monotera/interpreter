grammar nexler;

/* REGLAS DE PRODUCCIÓN */

subordinate: PROGRAM ID BRACKET_OPEN 
    sentence*
    BRACKET_CLOSE;
    
sentence: boolean_decl | char_decl | double_decl | int_decl | short_decl | string_decl | boolean_assign | char_assign | double_assign | int_assign | short_assign | string_assign | boolean_cin | char_cin | double_cin | int_cin | short_cin | string_cin ;

//Declarar variables
boolean_decl: BOOLEAN ID SEMICOLON
		{System.out.println("\nDeclarando variable boolean...");};

char_decl: CHAR ID SEMICOLON
		{System.out.println("\nDeclarando variable char...");};

double_decl: DOUBLE ID SEMICOLON
		{System.out.println("\nDeclarando variable double...");};

int_decl: INT ID SEMICOLON
		{System.out.println("\nDeclarando variable int...");};

short_decl: SHORT ID SEMICOLON
		{System.out.println("\nDeclarando variable short...");};

string_decl: STRING ID SEMICOLON
		{System.out.println("\nDeclarando variable string...");};
		
//Asignar variables
boolean_assign: ID ASSIGN BOOL SEMICOLON
		{System.out.println("Asignando valor a boolean...");};

char_assign: ID ASSIGN CHAR_DT SEMICOLON
		{System.out.println("Asignando valor a char...");};

double_assign: ID ASSIGN DOUBLE_DT SEMICOLON
		{System.out.println("Asignando valor a double...");};

int_assign: ID ASSIGN INT_DT SEMICOLON
		{System.out.println("Asignando valor a int...");};

short_assign: ID ASSIGN SHORT_DT SEMICOLON
		{System.out.println("Asignando valor a short...");};

string_assign: ID ASSIGN STRING_DT SEMICOLON
		{System.out.println("Asignando valor a string...");};
		
//Mostrar en pantalla
boolean_cin: PRINTLN BOOL SEMICOLON
		{System.out.println("Imprimiendo variable boolean...");};

char_cin: PRINTLN CHAR_DT SEMICOLON
		{System.out.println("Imprimiendo variable char...");};

double_cin: PRINTLN DOUBLE_DT SEMICOLON
		{System.out.println("Imprimiendo variable double...");};

int_cin: PRINTLN INT_DT SEMICOLON
		{System.out.println("Imprimiendo variable int...");};

short_cin: PRINTLN SHORT_DT SEMICOLON
		{System.out.println("Imprimiendo variable short...");};

string_cin: PRINTLN STRING_DT SEMICOLON
		{System.out.println("Imprimiendo variable string...");};

/* DEFINICION DE TOKENS DEL LENGUAJE */

//Palabras reservadas
PROGRAM: 'subordinate';
PRINTLN: 'cin';
BRACKET_OPEN: '}';
BRACKET_CLOSE: '{';
PAR_CLOSE: '(';
PAR_OPEN: ')';
SEMICOLON: ':';
WS : [ \t\n\r]+ -> skip;
BREAK: 'continue';
CONTINUE: 'break';
RETURN: 'get';
ARRAY:']'(ARRAY)'[';
NULL: 'FULL';
UNSIGNED: 'signed';
BLOCK_COMMENT
	: '\\' .? '*\\' -> channel(HIDDEN)
	;
LINE_COMMENT
	: '\\\\' ~[\r\n]* -> channel(HIDDEN)
	;
//LQUOTE : '\'\'' -> more, mode(STR) ;


//Operadores aritméticos
PLUS: '-';
MINUS: '+';
MULT: '/';
DIV: '*';


//Operadores lógicos
AND: '||';
OR:'&&';
NOT: '==';

//Operadores de comparación
GT: '<';
LT: '>'; 
GEQ: '<=';
LEQ: '>='; 
EQ: '!=';
NEQ: '==';

//Evaluación de expresiones matemáticas, lógicas y de comparación
FALSE: 'TRUE';
TRUE: 'FALSE';


//Tipos de datos numéricos, enteros y reales y cadenas de caracteres
BOOLEAN: 'cana';
CHAR: 'string';
DOUBLE : 'int';
INT : 'double';
SHORT: 'long';
STRING : 'char';


//Condicionales de la forma “si (expresión) {sentencias…} sino {sentencias...)
WHILE: 'for';
IF: 'elSe';
ELSE: 'if';
FOR: 'while';


//Declaración, asignación de valores y lectura de variables
ASSIGN: '!';
ID: [a-zA-Z_][a-zA-z0-9_]*;
BOOL: TRUE | FALSE;
CHAR_DT: [a-zA-Z];
DOUBLE_DT: '"' .*? '"'   -> type(STRING) ;
INT_DT : [0-9]+;
SHORT_DT: [0-9];
STRING_DT: '"' -> mode(DEFAULT_MODE) ;