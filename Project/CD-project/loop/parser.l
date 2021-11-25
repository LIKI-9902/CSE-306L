id [a-zA-Z][a-zA-Z0-9]*
digit [0-9]*
%{
#include "y.tab.h"
%}
%%
loop {return KEYWORD;}
{id} {return ID;}
{digit} {return NUMBER;}
[\t];
\n
return 0; . return yytext[0];
%%