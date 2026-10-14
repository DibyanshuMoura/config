#!/bin/bash

options="lock\nsuspend\nreboot\nshutdown\nlogout"

chosen=$(printf "$options" | rofi -dmenu \
    -theme ~/.config/rofi/themes/powermenu.rasi \
    -no-show-icons)

case "$chosen" in
    lock)
        hyprlock
        ;;
    suspend)
        systemctl suspend
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    logout)
        swaymsg exit
        ;;
esac
