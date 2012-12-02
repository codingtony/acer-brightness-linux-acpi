#!/bin/bash

max=$(cat /sys/class/backlight/intel_backlight/max_brightness)
curr=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
div=$((max / 10))
next=$((curr-div))
if [ $next -gt 0 ]; 
then
curr=$next
else
curr=0
fi
echo $curr  > /sys/class/backlight/intel_backlight/brightness
