#!/bin/sh

if [ -z $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}') ]; then
	printf '墳'
else
	printf '婢'
fi
printf ' '
wpctl status | awk '/Sink endpoints:/{p=1}!p' | sed -n 's/.*vol: //p' | cut -d' ' -f1 | cut -d'[' -f1 | awk '{printf $1*100"%"}'
