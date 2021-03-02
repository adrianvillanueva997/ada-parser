#/usr/bin/bash
flex parser.flex
gcc ./generated/lex.yy.c -L/lib -lfl
mv ./a.out ./bin
./bin/a.out < ./ada/example1.adb > ./output/result1.txt
./bin/a.out < ./ada/example2.adb > ./output/result2.txt
