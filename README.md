# System scripts made with bash

These are a group of lightweight system scripts made in bash.

### [Battery](https://github.com/JamieBurridge/system-scripts/tree/main/battery)
Dependencies
- acpi
- dunst
- xargs

It is best to use **batteryHigh.sh** and **batteryLow.sh** in a crontab file. This will check if your battery is too low or too high in a given timespan.


### [Volume](https://github.com/JamieBurridge/system-scripts/tree/main/volume)
Dependencies
- alsa (for amixer)
- dunst

Usage
```
volumeControl.sh up (turns volume up)
volumeControl.sh down (turns volume down)
volumeControl.sh mute (toggles volume mute)
```
### [Brightness](https://github.com/JamieBurridge/system-scripts/blob/main/brightness/brightnessControl.sh)
Dependencies
- brightnessctl
- dunst

Usage
```
brightnessControll.sh up (turns brightness up)
brightnessControll.sh down (turns brightness down)
```
