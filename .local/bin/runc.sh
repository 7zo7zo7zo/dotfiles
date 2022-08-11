#!/bin/sh

clear
find . -name "*.c" | entr -spc \
  'NAME=$(echo $0 | sed "s/\.c//") && gcc -Wall -Wpedantic -O0 -o $NAME $0 && $NAME'
