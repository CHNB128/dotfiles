# zf.sh
#
# Descriptio: Urbest z-frontend
#
#

cd ~/src/urbest/z-frontend

# Start for web
web() {
  clj -R:repl build.clj figwheel -p web
}

# Make local backend
setup_local_backend() {
  cat ./.env.local > ./.env
}

alias bk_local='setup_local_backend'
