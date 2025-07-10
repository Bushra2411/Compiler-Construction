%{
     //A flex program to identify string which starts with '' end '' and at least one alphabet (uppercase/lowercase)
%}

alp    [a-zA-Z]


%%

_{alp}+_ {printf("\nValid: %s\n",yytext);}
.+   {printf("\nInvalid: %s\n",yytext);}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}
