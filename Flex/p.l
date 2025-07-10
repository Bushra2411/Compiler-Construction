%{
    //Write a Flex program that counts the number of words and numbers in a string. [Use "end" as the terminating command, and it will not be counted].
    int w=0,n=0;
%}

words   [a-zA-Z]+
numbers [0-9]+

%%

{words}   {w++;}
{numbers} {n++;}
\n {
     printf("\nWords: %d\nNumbers: %d\n",w,n);
     w=0,n=0;
}
^end$ {return 0;}

%%
int yywrap() {return 1;}
int main(){yylex();return 0;}