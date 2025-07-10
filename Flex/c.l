%{
     //A flex program that counts the number and word from a string
     int w=0,n=0;
%}

words   [a-zA-Z]+
numbers  [0-9]+

%%

{words} {w++;}
{numbers} {n++;}
\n {
    printf("\nWord: %d,\nNumber: %d\n",w,n);
    w=0,n=0;
}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}