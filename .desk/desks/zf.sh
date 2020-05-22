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

alias bk_local='setup_local_backend'
