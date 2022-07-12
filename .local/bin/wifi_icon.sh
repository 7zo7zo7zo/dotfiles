#!/bin/sh

if [ $(cat /sys/class/net/eth0/operstate) == 'up' ]; then
	printf ''
elif [ $(cat /sys/class/net/wlan0/operstate) == 'up' ]; then
	printf '直'
else
	printf '睊'
fi
