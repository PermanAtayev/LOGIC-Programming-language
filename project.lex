%option yylineno

digit  [0-9]
letter [a-zA-Z]
sign   [+|-]
nl     \n

%%
while		 return (WHILE); 
in               return (READ); 
out              return(PRINT);
return           return(RETURN);
boolean          return(BOOL_TYPE);
int              return(INTEGER_TYPE);
if               return(IF);
else            return(ELSE);
\(              return(LP);
\)              return(RP);
\{              return(LB);
\}              return(RB);
\/\/.*          return(COMMENT);
\=              return(ASSIGNMENT);
\|              return(OR_OP);
\&              return(AND_OP);
\=\>            return(IMPLY);
\<\=\>          return(IFF);
\=\=            return(IF_EQUAL_TO);
\!                              return(NEGATION);
\^                              return(XOR);
true|false                  return(BOOL_LIT);
\,                              return(COMMA);
\;                              return(SEMI_COLON);
\@{letter}+{digit}*              return(PREDICATE_ID);
def(\ ){letter}+{digit}*        return(PREDICATE_DEF_ID);
const(\ ){letter}+{digit}*      return(CONST);
{digit}*(\.)?{digit}+           return(NUM);
\${letter}+{digit}*              return(VARIABLE);
[ \t\n] ;
.                            return(yytext[0]);
%%
 int yywrap() { return 1; }




