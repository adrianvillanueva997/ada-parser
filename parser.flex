%{
int line = 1;
%}
%option noyywrap
line \n 
whatever .*
endOf (\;)
symbol (\.|\,|\:)
digit [0-9]
digits [0-9]+
decimal [0-9]+[\,|\.][0-9]+
letter [a-zA-Z]
word [a-zA-Z]+
space " "|\t|\n
asignation .+(:=).+[;]$
int (Integer|integer)
string (String|string)
float (Float|float)
bool (Boolean|boolean)
if if.*[then]$
buclew (while)
buclef (for)
buclec (case)
endcharacters end.*[;]$
procedure (procedure).+[is]$
function (function).+[is]$
operator (and|or|xor)
arithmeticOperator (\+|-|\*|\/)
relationalOperator (<|>|=|!=)
char '[a-zA-Z]'|"[a-zA-Z]"
charGroup '[a-zA-Z]+'|"[a-zA-Z]+"
comments [--][\s\S]+*
blockDelimiter \{[\s\S]+\}
parenthesisDelimiter \([\s\S]+\)
floatNumber [-+]?[0-9]+[\.|\,][0-9]+

%%
{line} {line+=1;}
[-+]?{digit}+  {printf("Token Entero: %s en la linea %d \n",yytext,line);}
[-+]?{decimal} {printf("Token Decimal: %s en la linea %d \n",yytext,line);}
[-+]?{digit}+(.{digit}+)?((E|e)[-+]?{digit}+)? {printf("Token Real: %s en la linea %d\n",yytext,line);}
{symbol} {printf("Token Simbolo: %s en la linea %d\n",yytext,line);}
{letter}({digit}|{letter})+ {printf("Token Identificador: %s en la linea %d\n",yytext,line);}
{letter} {printf("Token letra: %s en la linea %d\n",yytext,line);}
{buclew}{space}+({word}|{letter}|{arithmeticOperator}|{relationalOperator}|{digit})+ {printf("Token bucle WHILE: %s en la linea %d\n",yytext,line);}
{buclef}{space}+({word}|{letter}|{arithmeticOperator}|{relationalOperator}|{digits})+ {printf("Token bucle FOR: %s en la linea %d\n",yytext,line);}
{buclec}{space}+({word}|{letter}|{arithmeticOperator}|{relationalOperator}|{digits})+ {printf("Token bucle CASE: %s en la linea %d\n",yytext,line);}
{endcharacters} {printf("Token fin de sentencia: %s en la linea %d\n",yytext,line);}
{if} {printf("Token sentencia if: %s en la linea %d\n",yytext,line);}
{char} {printf("Token caracter: %s en la linea %d\n",yytext,line);}
{charGroup} {printf("Token cadena de caracteres: %s en la linea %d\n",yytext,line);}
{procedure} {printf("Token procedure: %s en la linea %d\n",yytext,line);}
{blockDelimiter} {printf("Token delimitador de bloque: %s en la linea %d\n",yytext,line);}
{parenthesisDelimiter} {printf("Token delimitador de parentesis: %s en la linea %d\n",yytext,line);}
{asignation} {printf("Token asignacion: %s en la linea %d\n",yytext,line);}
{arithmeticOperator} {printf("Token Operador aritmetico:  %s en la linea %d \n",yytext,line);}
{space}+{operator}{space}+ {printf("Token Operador logico: %s en la linea %d \n",yytext,line);}
{relationalOperator} {printf("Token Operador relacional: %s en la linea %d \n",yytext,line);}
({digit}+|{letter}+){space}?{arithmeticOperator}{space}?({digit}+|{letter}+) {printf("Token operacion:  %s en la linea %d\n",yytext,line);}
.|\n {/*no hace nada con resto*/}
%%

