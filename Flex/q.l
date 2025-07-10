%{
    //Write a Flex program that accepts any string with "pq" or "PQ" anywhere in the string. [Use "end" as the terminating command, and it will not be counted].
%}

alp   .*pq.*|.*PQ.*

%% 

{alp}  {printf("Valid");}
.+     {printf("Invalid");}     
^end$  {return 0;}

%%
 


int yywrap() {return 1;}
int main(){yylex();return 0;}