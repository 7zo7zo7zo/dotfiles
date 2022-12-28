#!/bin/sh

if [ -z $(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{print $3}') ]; then
  if [ -z $(wpctl status | awk '/Video/{p=1}!p' | grep input) ]; then
		echo 
  else
		echo In use! 
  fi
elif [ -z $(wpctl status | awk '/Video/{p=1}!p' | grep input) ]; then
	echo 
else
	echo Trying to use! 
fi
