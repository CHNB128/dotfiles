cd ~/src/urbest/z-frontend

web() {
  clj -Arepl build.clj figwheel -p web
}

devcard() {
  clj -Arepl build.clj figwheel -p devcards
}
