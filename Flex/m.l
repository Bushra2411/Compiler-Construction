%{
      //Write a Flex program that counts the numbers of Vowels, Consonants, and Numerical Values from given inputs.
      int v=0,c=0,n=0;
%}

vowel [aeiouAEIOU]
cons  [a-zA-Z]
num   [0-9]

%%

{vowel} {v++;}
{cons}  {c++;}
{num}   {n++;}
\n {
    printf("\nVowel: %d\n,Consonant: %d\n,Number: %d\n",v,c,n);
    v=0,c=0;n=0;
}
^end$  {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}