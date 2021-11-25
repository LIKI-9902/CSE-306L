digit [0-9]*
id [a-zA-Z][a-zA-Z0-9]*
number [0-9].*\[0-9]*

%{

#include<stdio.h>    
#include<string.h>
#include<stdlib.h>
char st[10][10];
int cnt=0,i=0,j=0; 

%}

%%

num |
deci |
alpha |
if |
else |
while |
loop |
function {printf("\n %s is keyword",yytext);}
{number} {printf("\n %s is float",yytext);}
{digit} { printf("\n %s is digit",yytext);}
{id} {printf("\n %s is identifier",yytext);
        if(!look_up(st,yytext,i)){
            strcpy(st[i++],yytext);cnt++;
        }
    }
    
"<=" { printf("\n %s Relation operator lessthan or equal",yytext);}
"<"  { printf("\n %s Relation operator lessthan",yytext);}
">=" { printf("\n %s Relation operator greaterthan or equal",yytext);}
">"  { printf("\n %s Relation operator greaterthan",yytext);}
"==" { printf("\n %s Relation operator equal to",yytext);}
"!=" { printf("\n %s Relation operator not equal to",yytext);}
"="  { printf("\n %s Assignment operator",yytext);}
%%

main(){
    extern FILE *yyin;
    yyin = fopen("file","r");
    yylex();
    printf("No of id are : %d",cnt);
    printf("\n the contents of symbol table are : \n");
    for(j=0;j<i;j++){
        printf("\n %s",st[j]);
    }
}
int yywrap(){
    return 1;
}

int look_up(char s[10][10],char *id,int n){
    for(j=0;j<n;j++){
        if(!strcmp(st[j],id))
            return 1;
            exit;
    }
    return 0;
}
