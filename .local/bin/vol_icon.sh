#!/bin/sh

if [ -z $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}') ]; then
	printf '󰕾'
else
	printf '󰖁'
fi
printf ' '
wpctl status | awk '/Sources:/{p=1}!p' | sed -n 's/.*vol: //p' | cut -d' ' -f1 | cut -d'[' -f1 | awk '{printf $1*100"%"}'
