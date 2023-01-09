#!/bin/sh

if [ $(bluetoothctl show | grep Powered | cut -f2 -d' ') == 'no' ]; then
	printf ''
elif [ -z "$(bluetoothctl devices Connected)" ]; then
	printf ''
else
	printf ''
fi
