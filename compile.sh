#/usr/bin/bash
flex parser.flex
gcc lex.yy.c -L/lib -lfl
./a.out
