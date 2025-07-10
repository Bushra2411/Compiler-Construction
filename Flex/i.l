%{
    // //Write a Flex program that accepts any string that has '^' at the beginning and end, and in between those '^', the string should be 2-part and separated by a '-'.
%}



%%
\^[a-zA-Z0-9_]+-[a-zA-Z0-9_]+\^    {printf("Valid");}
^end$                              {return 0;}
.+                                 {printf("invalid");}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}