#!/bin/sh

set -e

setxkbmap -option grp:caps_toggle us,ru

eval $(ssh-agent) &
dunst &
~/.fehbg &
~/.config/polybar/launch.sh --docky &
