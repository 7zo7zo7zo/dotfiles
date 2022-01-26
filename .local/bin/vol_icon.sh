#!/bin/sh

if [ $(pacmd list-sinks | awk '/muted/ { print $2 }') == 'no' ]; then
	printf '墳';
else
	printf '婢';
fi
printf ' '
pactl list sinks | awk '$1=="Volume:" {printf $5}'
