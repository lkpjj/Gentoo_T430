#!/bin/bash
#This is just a script used to backup some stuff
#system: gentoo x86_64
#pc: Thinkpad T430 2342CTO

#zsh
cp $HOME/.zshrc .
cp $HOME/.bashrc .
#X,awesome,fcitx
cp $HOME/.xinitrc .
#vim
cp $HOME/.vimrc .
#kernel
cp /usr/src/linux/.config .
#package
cp /etc/portage/package.* .
#USE,CFLAGS,CHOST,etc
cp /etc/portage/make.conf .
#mount
cp /etc/fstab .
#create wifi
cp /usr/bin/createAP .
#xrandr
cp /usr/local/bin/auto_display.sh .
cp /usr/local/bin/update_ctrl.sh .
cp /usr/local/bin/auto_projector.sh .
#X,slim
cp /etc/slim.conf .
#thinkfan
cp /etc/thinkfan.conf .
#system language
cp /etc/env.d/02locale .
#network client
cp /etc/conf.d/net .
#synaptics 
cp /etc/X11/xorg.conf.d/50-synaptics.conf .
#shutdown.sh
cp /usr/bin/shutdown.sh .
