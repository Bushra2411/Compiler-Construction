%{
      //A flex program to identify integer number or floating number
%}

int [0-9]

%%
{int}         {printf("\nInteger: (%s)\n",yytext);}
{int}.{int}   {printf("\nFloating Number: (%s)\n",yytext);}
^end$         {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}