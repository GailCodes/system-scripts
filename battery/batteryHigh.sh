#! /bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export DISPLAY=:0.0

battery_high=80
battery_percentage=$(acpi | cut -d':' -f2 | cut -d',' -f2 | cut -d'%' -f1 | xargs)

if [[ "$(acpi | cut -d':' -f2 | cut -d',' -f1 | xargs)" == "Charging" && $battery_percentage -ge $battery_high ]]; then
    exec $(dunstify -a Battery "Battery at $battery_percentage%")
else
    return 1
fi
