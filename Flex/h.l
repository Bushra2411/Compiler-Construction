%{
      //A flex program that accepts any string with 'pq' or 'PQ' anywhere in the string
%}

alp  .*pq.*|.*PQ.*

%%

{alp}  {printf("Valid\n");}
.+     {printf("Inalid\n");}
^end$         {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}