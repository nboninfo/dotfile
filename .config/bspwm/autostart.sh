#!/bin/bash

numlockx on & 
picom --config ${HOME}/.config/picom/picom.conf --vsync --experimental-backends &
${HOME}/.config/polybar/launch.sh &
megasync &
dropbox &
nitrogen --restore &
dunst &
${HOME}/.config/OhMyZsh/update.sh
polkit-gnome-authentication-agent-1 &
