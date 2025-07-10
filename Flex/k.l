%{
    //write a flex programe that string start with p and end with q
%}

%%

p[a-zA-Z0-9]+q {printf("Valid");}
.+              {printf("Invalid");}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}