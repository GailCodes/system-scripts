#! /usr/bin/bash

function get_brightness {
    brightnessctl | grep % | cut -d'(' -f2 | cut -d ')' -f1
}

function notify_brightness {
    notify-send -r 5555 -a Brightness "$(get_brightness)"
}

case "$1" in 
    up)
        brightnessctl set +5%
        notify_brightness
        ;;
    down)
        brightnessctl set 5%-
        notify_brightness
        ;;
esac
