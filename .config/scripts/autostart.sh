#!/bin/sh

setxkbmap -option grp:caps_toggle us,ru
powerline-daemon -q &
compton --config ~/.config/compton/compton.conf -b &
guake &
blueman-applet &
nm-applet &
tmux new -d -s general &
xrandr --output HDMI-A-0 --right-of eDP &
~/.config/polybar/scripts/launch.sh &
## Wallpapers
## Random image from unsplash
# ~/.config/scripts/unsplash_wallpaper.sh &
## Previous image
# ~/.fehbg &
## Random from folder
~/.config/scripts/random_wallpaper.sh ~/wallpapers
