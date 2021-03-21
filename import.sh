#!/bin/sh

find ./resources -mindepth 1 -maxdepth 1 -type d -print0 | xargs -0 -I % ln -sf $PWD/% ~/
find ./resources -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 -I % ln -sf $PWD/% ~/
