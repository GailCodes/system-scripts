#! /usr/bin/bash

function get_volume {
    amixer -D pulse get Master | grep 'Right:' | awk -F'[][]' '{ print $2 }'
}

function notify_volume {
    notify-send -r 8888 -a Volume "$(get_volume)"
}

case "$1" in 
    up)
        amixer -D pulse sset Master 5%+
        notify_volume
        ;;
    down)
        amixer -D pulse sset Master 5%-
        notify_volume
        ;;
    mute)
        amixer sset Master toggle
        ;;
esac
