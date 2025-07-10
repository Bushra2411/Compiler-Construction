%{
     //A flex program that starts with a 'p' and ends with a 'q  
%}

alp p.*q|P.*Q

%%

{alp} {printf("\nValid: %s\n",yytext);}
.+   {printf("\nInvalid: %s\n",yytext);}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}