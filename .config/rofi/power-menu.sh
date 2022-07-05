#!/bin/bash

style="power"
rofi_command="rofi -theme config_pm.rasi"
uptime=$(uptime -p)
my_hostname=$(cat /etc/hostname)

# Options
shutdown=" Shutdown"
reboot=" Reboot"
logout=" Logout"

# Variable passed to rofi
options="$shutdown\n$reboot\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p " $my_hostname | $uptime: " -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
	;;
    $reboot)
        systemctl reboot
        ;;
    $logout)
        bspc quit
        ;;
esac
