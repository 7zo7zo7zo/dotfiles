#!/bin/sh

clear
find . -name "*.c" | entr -spc \
	'gcc -Wall -Wpedantic -O0 -o $(echo $0 | sed "s/\.c//") $0'
