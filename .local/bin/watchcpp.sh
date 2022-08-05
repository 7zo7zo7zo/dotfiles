#!/bin/sh

clear
find . -name "*.cpp" | entr -spc \
	'g++ -Wall -Wpedantic -O0 -o $(echo $0 | sed "s/\.cpp//") $0'
