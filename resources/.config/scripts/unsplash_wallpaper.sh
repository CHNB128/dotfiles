#!/bin/sh

DEST=~/tmp/wallpaper.jpg

wget -O $DEST https://source.unsplash.com/1920x1080/?sculpture
feh --bg-scale $DEST
