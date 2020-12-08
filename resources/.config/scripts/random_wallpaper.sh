#!/bin/sh

feh --bg-scale $1/$(ls $1 | sort -R | tail -n 1)
