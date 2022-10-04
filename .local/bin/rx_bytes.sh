#!/bin/sh

PREV=$(</sys/class/net/wlp8s0/statistics/rx_bytes)
sleep 1
CURR=$(</sys/class/net/wlp8s0/statistics/rx_bytes)
printf "$(expr $CURR - $PREV) B/s"
