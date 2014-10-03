#!/bin/bash
xrandr --output LVDS1 --mode 1600x900

result=xrandr | grep "VGA"
if [ result ];then
    xrandr --output VGA1 --mode 1024x768 --rate 85 --right-of LVDS1 
fi
