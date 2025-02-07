#!/bin/bash

LOGFILE=~/.config/i3/log/monitor_setup.log

if xrandr | grep -q "eDP-1 connected" && xrandr | grep -q "DP-2-1 connected"; then
    xrandr --output DP-2-1 --primary --auto --output eDP-1 --auto --right-of DP-2-1
elif xrandr | grep -q "DVI-D-0 connected" && xrandr | grep -q "HDMI-0 connected"; then
    xrandr --output DVI-D-0 --primary --auto --output HDMI-0 --auto --left-of DVI-D-0
else
    echo "Pas de config multi-écrans détectée" >> $LOGFILE
fi
