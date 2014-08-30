#!/bin/sh
ACTION=`zenity --width=60 --height=260 --list --radiolist --text="选择菜单功能" --title="菜单栏" --column "Choice" --column "Action" TRUE 关机 FALSE 重启 FALSE 锁屏`

if [ -n "${ACTION}" ];then
  case $ACTION in
  关机)
    zenity --question --text "Are you sure you want to halt?" && gksudo halt
    ##xterm -e "sudo shutdown -h now"
    ;;
  重启)
    zenity --question --text "Are you sure you want to reboot?" && gksudo reboot
    ##xterm -e "sudo shutdown -r now"
    ;;
  锁屏)
     slock
    ;;
  esac
fi
