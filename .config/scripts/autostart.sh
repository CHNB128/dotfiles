#!/bin/sh

setxkbmap -option grp:caps_toggle us,ru

powerline-daemon -q &
compton --config ~/.config/compton/compton.conf -b &
guake &
blueman-applet &
~/.fehbg &
nm-applet &
