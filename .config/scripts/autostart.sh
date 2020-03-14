#!/bin/sh

setxkbmap -option grp:caps_toggle us,ru

powerline-daemon -q &
compton -b &
guake &
blueman-applet &
~/.fehbg &
nm-applet &
