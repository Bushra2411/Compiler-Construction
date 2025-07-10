%{
     //count the number of word(s) from a string.
     int v=0;
%}

alp [a-zA-Z0-9]+

%%

{alp}  {v++;}
\n {
     printf("\nWords: %d\n",v);
     v=0;
}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}
