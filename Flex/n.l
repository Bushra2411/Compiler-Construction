%{
    // Write a Flex program that recognizes +, -, *, and / operators and prints their names, otherwise print, 'Invalid Input'.
%}

%%

"+"   {printf("Addition operator\n");}
"-"   {printf("Subtraction operator\n");}
"*"   {printf("Multiplication operator\n");}
"/"   {printf("Division operator\n");}
"%"   {printf("Modulus operator\n");}
.+    {printf("Invalid\n");}
^end$ {return 0;}
%%

int yywrap() {return 1;}
int main(){yylex();return 0;}