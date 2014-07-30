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

#swap ctrl and capslock
setxkbmap -option ctrl:swapcaps     # Swap Left Control and Caps Lock
setxkbmap -option ctrl:nocaps       # Make Caps Lock a Control key

#create_ap wlp3s0 enp0s25 MyAccessPoint

emacs --daemon &
compton &
wicd-client --tray &

#fcitx setup
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx &

exec dbus-launch  --sh-syntax --exit-with-session awesome
# exec gnome-session
# exec startkde
#exec startxfce4
# ...or the Window Manager of your choice
