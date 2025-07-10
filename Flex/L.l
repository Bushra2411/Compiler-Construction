%{
    //write a flex program to print vowel consonants and numbers
%}

vowel [aeiouAEIOU]
cons  [a-zA-Z]
num   [0-9]

%%

{vowel} {printf("\nVowel: %s\n",yytext);}
{cons}  {printf("Consonant: %s\n",yytext);}
{num}   {printf("Number: %s\n",yytext);}
^end$  {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}