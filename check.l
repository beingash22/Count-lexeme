%option noyywrap

%{
#include <stdio.h>

int k=0,i=0,d=0,s=0;
%}

%%

(int|float|void|return|if|else|break|char|printf|include)  { k++;}
[_a-zA-Z][_a-zA-Z0-9]*  { i++;}
[0-9]*                  { d++;}
.                        { s++;}
%%

void main()
{

yylex();

printf ("no. of identifiers are:%d\n", i);
printf ("no. of keywords are:%d\n", k);
printf ("no. of special symbols are:%d\n", s);
printf ("no. of digits are:%d\n", d);

}
