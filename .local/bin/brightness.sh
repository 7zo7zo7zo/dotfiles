#!/bin/sh

MAX=$(</sys/class/backlight/$1/max_brightness)
CURR=$(</sys/class/backlight/$1/brightness)
#CURR=$(</sys/class/backlight/$1/actual_brightness)

if [ ${2: -1} == '-' ] ; then
  PERC=${2%?}
  FINAL=$(expr $CURR - $MAX \* $PERC / 100)
elif [ ${2: -1} == '+' ] ; then
  PERC=${2%?}
  FINAL=$(expr $CURR + $MAX \* $PERC / 100)
else
  PERC=$2
  FINAL=$(expr $PERC \* $MAX / 100)
fi

if [ $FINAL -gt $MAX ] ; then
  FINAL=$MAX
elif [ $FINAL -lt 0 ] ; then
  FINAL=0
fi

printf $FINAL > /sys/class/backlight/$1/brightness
