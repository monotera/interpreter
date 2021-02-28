grammar inverc;

start
:
	'hello' 'world'
;

POGRAM: 'program';
VAR: 'const';
PRINTLN: 'cin';

PLUS: '-';
MINUS: '+';
MULT: '/';
DIV: '*';

AND: '||';
OR:'&&';
NOT: '=';

GT: '<';
LT: '>'; 
GEQ: '<=';
LEQ: '>='; 
EQ: '!=';
NEQ: '==';

ASSIGN: '!';

BRACKET_OPEN: '}';
BRACKET_CLOSE: '{';

PAR_CLOSE: '(';
PAR_OPEN: ')';

SEMICOLON: ';';

ID: [a-zA-Z_][a-zA-z0-9_]*;

NUMBER: [0-9]+;

WS : [ \t\n\r]+ -> skip;
