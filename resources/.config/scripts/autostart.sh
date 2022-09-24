#!/bin/sh

# language to CapsLock
setxkbmap -option grp:caps_toggle us,ru
powerline-daemon -q &
picom --config ~/.config/picom.conf -b &
# Monitor setup
xrandr --output HDMI-A-0 --left-of eDP &
# Tray
~/.config/polybar/launch.sh --docky &
## Wallpapers
# Random image from unsplash
# ~/.config/scripts/unsplash_wallpaper.sh &
# Previous image
~/.fehbg &
# Random from folder
# ~/.config/scripts/random_wallpaper.sh ~/wallpapers

# Disable tuchpad while typing
syndaemon -i 0.5 -t -K -R &
# WIFI
iwctl station wlan0 connect tenda1 &
