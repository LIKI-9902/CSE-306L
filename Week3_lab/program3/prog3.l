%{
    int v_count=0;
    int c_count =0;
%}
  
%%
[aeiouAEIOU] {v_count++;}
[a-zA-Z] {c_count++;}
%%
int yywrap(){}
int main()
{
    printf("Enter the string of vowels and consonents:");
    yylex();
    printf("Number of vowels are:  %d\n", v_count);
    printf("Number of consonants are:  %d\n", c_count);
    return 0;
} 