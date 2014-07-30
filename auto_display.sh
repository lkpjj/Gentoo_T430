#!/bin/bash
xrandr --output LVDS1 --mode 1600x900

result=xrandr | grep "VGA"
if [ result ];then
    xrandr --output VGA1 --mode 1920x1080  --rate 60 --right-of LVDS1 
fi