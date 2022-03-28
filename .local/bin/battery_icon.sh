#!/bin/sh
BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STAT=$(cat /sys/class/power_supply/BAT0/status)
if [ $STAT = 'Charging' ]; then	
	if [ $BAT >= 90 ]; then
		printf '';
	elif [ $BAT >= 80 ]; then
		printf '';
	elif [ $BAT >= 60 ]; then
		printf '';
	elif [ $BAT >= 40 ]; then
		printf '';
	elif [ $BAT >= 30 ]; then
		printf '';
	else
		printf '';
	fi
else
	if [ $BAT == 100 ]; then
		printf '';
	elif [ $BAT >= 90 ]; then
		printf '';
	elif [ $BAT >= 80 ]; then
		printf '';
	elif [ $BAT >= 70 ]; then
		printf '';
	elif [ $BAT >= 60 ]; then
		printf '';
	elif [ $BAT >= 50 ]; then
		printf '';
	elif [ $BAT >= 40 ]; then
		printf '';
	elif [ $BAT >= 30 ]; then
		printf '';
	elif [ $BAT >= 20 ]; then
		printf '';
	elif [ $BAT >= 10 ]; then
		printf '';
	else
		printf '';
	fi
fi
printf " $BAT%%"
