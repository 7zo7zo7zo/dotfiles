#!/bin/sh

BAT=$(cat /sys/class/power_supply/BAT1/capacity)
STAT=$(cat /sys/class/power_supply/BAT1/status)
if [ $STAT = 'Charging' ]; then	
	if [ $BAT -ge 90 ]; then
		printf ''
	elif [ $BAT -ge 80 ]; then
		printf ''
	elif [ $BAT -ge 60 ]; then
		printf ''
	elif [ $BAT -ge 40 ]; then
		printf ''
	elif [ $BAT -ge 30 ]; then
		printf ''
	else
		printf ''
	fi
else
	if [ $BAT -eq 100 ]; then
		printf ''
	elif [ $BAT -ge 90 ]; then
		printf ''
	elif [ $BAT -ge 80 ]; then
		printf ''
	elif [ $BAT -ge 70 ]; then
		printf ''
	elif [ $BAT -ge 60 ]; then
		printf ''
	elif [ $BAT -ge 50 ]; then
		printf ''
	elif [ $BAT -ge 40 ]; then
		printf ''
	elif [ $BAT -ge 30 ]; then
		printf ''
	elif [ $BAT -ge 20 ]; then
		printf ''
	elif [ $BAT -ge 10 ]; then
		printf ''
	else
		printf ''
	fi
fi
printf " $BAT%%"
