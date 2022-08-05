#!/bin/sh

clear
find . -name "*.cpp" | entr -spc \
  'NAME=$(echo $0 | sed "s/\.cpp//") && g++ -Wall -Wpedantic -O0 -o $NAME $0 && $NAME'
