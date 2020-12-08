#!/usr/bin/env bash

# Handle argument.
if [ ! -z "$@" ]
then
  xdg-open $@
  exit
fi

cat ~/.config/rofi/bookmarks
