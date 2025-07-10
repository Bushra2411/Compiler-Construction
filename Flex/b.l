%{
     //A flex program to identify smaller letter and capital letter from a string     
%}

capital [A-Z]
small   [a-z]

%%

{capital} {printf("\nCapital: %s\n",yytext);}
{small}   {printf("\nSmall: %s\n",yytext);}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}