#!/bin/sh

setxkbmap -option grp:caps_toggle us,ru
polybar top &
polybar bottom &
powerline-daemon -q &
compton --config ~/.config/compton/compton.conf -b &
guake &
blueman-applet &
~/.fehbg &
nm-applet &
