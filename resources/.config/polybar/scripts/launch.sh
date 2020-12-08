#!/bin/sh

function reload() {
  polybar --reload top &
  polybar --reload bottom &
}

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m reload &
  done
else
  reload &
fi
