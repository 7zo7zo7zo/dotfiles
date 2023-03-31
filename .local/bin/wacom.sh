#!/bin/sh
STYLUS=$(xsetwacom list devices | grep STYLUS | awk '{print $7}')
WIDTH=$(xsetwacom get $STYLUS Area | awk '{print $3}')
SCALED_HEIGHT=$(expr $WIDTH \* 1080 / 1920)
xsetwacom set $STYLUS Area 0 0 $WIDTH $SCALED_HEIGHT
