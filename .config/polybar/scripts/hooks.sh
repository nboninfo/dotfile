#!/bin/sh

hook-0 = echo "%{A1:dunstctl set-paused true && polybar-msg hook dunst 2:}%{A}" &
hook-1 = echo "%{A1:dunstctl set-paused false && polybar-msg hook dunst 1:}%{A}" &
