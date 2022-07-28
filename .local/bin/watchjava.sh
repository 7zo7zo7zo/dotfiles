#!/bin/sh

clear
find . -name "*.java" | entr -spc \
  'javac $0'
