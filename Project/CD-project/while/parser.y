%{
#include<stdio.h>
%}
%token NUMBER
%token KEYWORD
%token ID
%token AOP
%token LOP
%%
S:E {printf("The expression is correct\n");};
E:KEYWORD'('C')''{''}';
C:ID R ID | C B C | ID R D | D;
R:AOP;
B:LOP;
D:NUMBER;
%%
int main(){
yyparse();
}
int yywrap(){
return 1;
}
void yyerror(char *s){
printf("Error %s",s);
}