#/usr/bin/bash
flex parser.flex
gcc lex.yy.c -L/lib -lfl
./a.out < ./ada/example1.adb > result1.txt
./a.out < ./ada/example2.adb > result2.txt
