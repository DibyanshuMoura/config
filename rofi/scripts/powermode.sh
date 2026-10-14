#!/bin/bash

options="performance\nbalanced\npowersaver"

chosen=$(printf "$options" | rofi -dmenu \
    -theme ~/.config/rofi/themes/powermode.rasi \
    -no-show-icons)

case "$chosen" in
    performance)
        sudo tuned-adm profile throughput-performance
        ;;
    balanced)
        sudo tuned-adm profile balanced
        ;;
    powersaver)
        sudo tuned-adm profile powersave
        ;;
esac
