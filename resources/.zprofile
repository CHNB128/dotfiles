# To avoid potential situation where cdm(1) crashes on every TTY, here we
# default to execute cdm(1) on tty1 only, and leave other TTYs untouched.

if [ $(command -v startx) ]; then
  startx /bin/i3
fi
