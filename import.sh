#!/bin/sh

ROOT=$(dirname "$0")

ln -sf $ROOT/resources/.config ~/
ln -sf $ROOT/resources/.zshrc ~/
ln -sf $ROOT/resources/.tmux.conf ~/