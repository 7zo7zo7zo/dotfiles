#!/bin/sh

if [ $(pactl get-source-input @DEFAULT_SOURCE@ | awk '/muted/ { print $2 }') == 'yes' ]; then
  if [ $(pactl list | grep -c RUNNING) -gt 2 ]; then
    echo Trying to use! 
  else 
    echo 
  fi
elif [ $(pactl list | grep -c RUNNING) -gt 2 ]; then
  echo In use! 
else
  echo 
fi
