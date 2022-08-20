#!/bin/sh

if [ $(pactl get-sink-mute @DEFAULT_SINK@ | awk '/Mute/ { print $2 }') == 'no' ]; then
	printf '墳'
else
	printf '婢'
fi
printf ' '
pactl list sinks | awk '$1=="Volume:" {printf $5}'
