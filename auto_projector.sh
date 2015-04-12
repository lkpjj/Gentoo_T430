xrandr --output LVDS1 --mode 1024x768

result=xrandr | grep "VGA"
if [ result ];then
    xrandr --output VGA1 --same-as LVDS1 --auto
fi
