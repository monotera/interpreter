grammar nexler;

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

//Declaración, asignación de valores y lectura de variables
VAR: 'const';
ASSIGN: '!';
ID: [a-zA-Z_][a-zA-z0-9_]*;
NUMBER: [0-9]+;

//Evaluación de expresiones matemáticas, lógicas y de comparación


//Tipos de datos numéricos, enteros y reales y cadenas de caracteres


//Condicionales de la forma “si (expresión) {sentencias…} sino {sentencias...)









/* REGLAS DE PRODUCCIÓN */

subordinate: PROGRAM ID BRACKET_OPEN 
    sentence*
    BRACKET_CLOSE;
    
sentence: var_decl | var_assign | cin;

//Declarar variables
var_decl: VAR ID SEMICOLON
		{System.out.println("\nDeclarando variable...");};
		
//Asignar variables
var_assign: ID ASSIGN NUMBER SEMICOLON
		{System.out.println("Asignando variable...");};
		
//Mostrar en pantalla
cin: PRINTLN NUMBER SEMICOLON
		{System.out.println("Imprimiendo variable...");};
		
		
		
		
		

