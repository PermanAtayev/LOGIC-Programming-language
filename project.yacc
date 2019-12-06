%token IF_EQUAL_TO LP RP PREDICATE_DEF_ID VARIABLE CONST WHILE NUM BOOL_LIT IF ELSE RETURN NEGATION XOR ASSIGNMENT OR_OP AND_OP IMPLY IFF COMMENT LB RB COMMA SEMI_COLON READ PRINT PREDICATE_ID BOOL_TYPE INTEGER_TYPE

%%
program: predicates statements | predicates { printf("Valid input\n"); return 0; }; 

predicates: predicate predicates | empty;

predicate:   PREDICATE_DEF_ID LP parameter_list RP LB statements RETURN logic_term RB | PREDICATE_DEF_ID LP empty RP LB statements RETURN logic_term RB;

predicate_inst: PREDICATE_ID LP params RP | PREDICATE_ID LP empty RP ;

params: params COMMA logic_term | logic_term ;

parameter_list: parameter_list COMMA argument | argument;

argument: type VARIABLE;

type: BOOL_TYPE | INTEGER_TYPE;

literal: NUM | BOOL_LIT;

empty:  ;

statements: statements statement | statement;

statement: condition_statement | non_if_statement;

condition_statement: IF LP expression RP LB statements RB
|  IF LP expression RP LB statements RB ELSE LB statements RB;

comment: COMMENT;

expression: logic_term operator expression | logic_term;

logic_term: predicate_inst | VARIABLE | literal;

operator: OR_OP | AND_OP | NEGATION | IMPLY | IFF | XOR | IF_EQUAL_TO;

non_if_statement:  io | loop | assignment | const_declaration | comment | declaration | predicate_inst;

io: in_statement | out_statement;

in_statement: READ LP VARIABLE RP;

out_statement: PRINT LP VARIABLE RP;

loop: WHILE LP expression RP LB program RB;

assignment: VARIABLE ASSIGNMENT expression;

const_declaration: CONST assignment;

declaration: type VARIABLE | VARIABLE; 

%%
#include "lex.yy.c"

int yyerror(char* s){
  fprintf(stderr, "%s at line %d\n",s, yylineno);
  return 1;
}
int main(){
 yyparse();
 return 0;
}

