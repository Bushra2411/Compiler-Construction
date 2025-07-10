%{
    //Write a Flex program that accepts any string that has '^' at the beginning and end, and in between those '^', the string should be 2-part and separated by a '-'. [Use "end" as the terminating command, and it will not be counted].
%}

%%

\^.+-.+\^ {printf("Valid");}
.+        {printf("Invalid");}
^end$     {return 0;}

%%

int yywrap() {return 1;}
int main(){yylex();return 0;}