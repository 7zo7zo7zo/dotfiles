#!/bin/sh
mount -o gid=users,fmask=113,dmask=002 $1 /mnt/usbstick
