#!/bin/bash
#restore the config files in current dir to where they should be.
#system: gentoo x86_64
#pc: Thinkpad T430 2342CTO
#you'd better login in as root 

#zsh
cp ./.zshrc $HOME
cp ./.bashrc $HOME
#X,awesome,fcitx
cp ./.xinitrc $HOME
#vim
cp ./.vimrc $HOME
#kernel
cp ./.config /usr/src/linux/
#package
cp ./package.* /etc/portage/
#gentoo
cp ./make.conf /etc/portage/
#mount 
cp ./fstab /etc/
#create wifi
cp ./createAP /usr/bin/
#xrandr
cp ./auto_display.sh /usr/bin/
#X,slim
cp ./slim.conf /etc/
#thinkfan
cp ./thinkfan.conf /etc/
#system language
cp ./02locale /etc/env.d/
#network client
cp ./net /etc/conf.d/
#synaptics
cp ./50-synaptics.conf /etc/X11/xorg.conf.d/
cp ./shutdown.sh /usr/bin/
