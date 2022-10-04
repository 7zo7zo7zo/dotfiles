#!/bin/sh

PREV=$(</sys/class/net/wlp8s0/statistics/tx_bytes)
sleep 1
CURR=$(</sys/class/net/wlp8s0/statistics/tx_bytes)
printf "$(expr $CURR - $PREV) B/s"
