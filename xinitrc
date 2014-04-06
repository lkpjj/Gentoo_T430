#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

#swap ctrl and capslock
setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key

emacs --daemon &

wicd-client --tray &

#fcitx setup
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS="@im=fcitx"
fcitx &

exec dbus-launch --sh-syntax --exit-with-session awesome
# exec gnome-session
# exec startkde
#exec startxfce4
# ...or the Window Manager of your choice
