#!/bin/sh

if [ $(cat /sys/class/net/enp7s0/operstate) == 'up' ]; then
	printf ''
elif [ $(cat /sys/class/net/wlp8s0/operstate) == 'up' ]; then
	printf '直'
else
	printf '睊'
fi
