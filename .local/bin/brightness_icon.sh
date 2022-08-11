#!/bin/sh

MAX=$(</sys/class/backlight/$1/max_brightness)
CURR=$(</sys/class/backlight/$1/brightness)
printf $(expr $CURR \* 100 / $MAX)%%
