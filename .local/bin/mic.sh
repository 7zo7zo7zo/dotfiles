#!/bin/bash

if [[ $(pacmd list-sources | awk '/muted/ { print $2 }') == *'yes'* ]]; then
  if [[ $(pacmd list-sink-inputs) != "0 sink input(s) available." ]]; then
    echo Trying to use! 
  else 
    echo 
  fi
elif [[ $(pacmd list-sink-inputs) != '0 sink input(s) available.' ]]; then
  echo In use! 
else
  echo 
fi
