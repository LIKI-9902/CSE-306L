%{ 
#include<stdio.h> 
%} 
%token NUMBER 

%% 
S: E { printf("The result is =%d\n",$1);} 
 ; 
E: E'+'E {$$ = $1 + $3; };
E: E'-'E {$$ = $1 - $3; };
E: E'*'E {$$ = $1 * $3; };
E: E'/'E {$$ = $1 / $3; };
E: '-'E  {$$ = - $2; };
E: '('E')'{$$ = $2;}
| NUMBER {$$ = $1;}
;
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