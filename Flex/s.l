%{
    //A simple Calculator
    int val=0,result=0;
    int first=1;
    char last;
%}

%%

[0-9]+ {
    if(first){
        result=atoi(yytext);
        first=0;
    }else{
        val=atoi(yytext);
        if(last=='+'){
            result+=val;
        }else if(last=='-'){
            result-=val;
        }else if(last=='*'){
            result*=val;
        }else if(last=='/'){
            result/=val;
        }else if(last=='%'){
            result%=val;
        }
    }
}
"+" {last=yytext[0];}
"-" {last=yytext[0];}
"*" {last=yytext[0];}
"/" {last=yytext[0];}
"%" {last=yytext[0];}
\n {
    printf("\nresult: %d\n",result);
    first=1;
    result=0;
    last=' ';
}
^end$ {return 0;}

%%

int yywrap(){return 1;}
int main(){yylex();return 0;}