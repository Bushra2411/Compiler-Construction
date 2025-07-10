%{
     //A flex program to count smaller letter and capital letter in a string
     int c=0,s=0;
%}

capital [A-Z]
small   [a-z]

%%

{capital} {c++;}
{small}   {s++;}
\n {
    printf("\nCapital: %d,\nSmall: %d\n",c,s);
    c=0,s=0;
}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}