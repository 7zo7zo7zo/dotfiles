#!/bin/sh

if [ $(pactl get-source-mute @DEFAULT_SOURCE@ | awk '/Mute/ { print $2 }') == 'yes' ]; then
  if [ -z $(pactl list short | grep input | grep RUNNING) ]; then
    echo 
  else 
    echo Trying to use! 
  fi
elif [ -z $(pactl list short | grep input | grep RUNNING) ]; then
  echo 
else
  echo In use! 
fi
