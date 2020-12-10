cd ~/src/urbest/z-frontend

web() {
  clj -Arepl build.clj figwheel -p web -s 8001 -n 8002
}

devcard() {
  clj -Arepl build.clj figwheel -p devcards -s 8003 -n 8004
}

m_android() {
  clj -Arepl build.clj figwheel -p android -a avd -s 8005 -n 8006
}

m_ios() {
  clj -Arepl build.clj figwheel -p ios -i simulator -s 8007 -n 8008
}
