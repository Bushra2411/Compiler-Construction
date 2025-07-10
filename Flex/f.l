%{
     //A flex program to identify string which starts with _ end _ and at least 2 character and at most 4 character in between them
%}

%%

_.{2,4}_ {printf("\nValid: %s\n",yytext);}
.+   {printf("\nInvalid: %s\n",yytext);}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}
