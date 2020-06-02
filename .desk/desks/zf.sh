# zf.sh
#
# Descriptio: Urbest z-frontend
#
#

cd ~/src/urbest/z-frontend

export STRIPE_CLIENT_ID=ca_G10bZC5qzgLiOKcuVZ15FT9CVXSqBHB3

# Start for web
web() {
  clj -R:repl build.clj figwheel -p web
}

# Make local backend
setup_local_backend() {
  cat ./.env.local > ./.env
}

mobile_android_real() {
  tmux \
    new-session "yarn start; read" \; \
    new-window "clj -R:repl build.clj figwheel -p android -a real; read" \;
}

mobile_android_avd() {
  tmux \
    new-session "yarn start; read" \; \
    new-window "clj -R:repl build.clj figwheel -p android -a real; read" \; \
    new-window "emulator -avd Pixel_3a_XL_API_29; read" \;
}

mobile_android_install() {
  npx react-native run-android --variant=stageDebug --appId io.urbest.stage
}

alias mreal='mobile_android_real'
alias mavd='mobile_android_avd'
alias minstall='mobile_android_install'
alias bk_local='setup_local_backend'
