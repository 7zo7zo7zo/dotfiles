#!/bin/sh

clear
find . -name "*.java" | entr -spc \
  'NAME=$(echo $0 | sed "s/\.java//") && javac $0 && java $(basename $NAME)'
