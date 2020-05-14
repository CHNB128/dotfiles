# bk.sh
#
# Descriptio: Urbest a-backend
#
#

cd ~/src/urbest/a-backend

# Recreate database
database_reset() {
  docker stop urbest-dev-pg elasticsearch \
    && docker rm urbest-dev-pg elasticsearch \
    && ./containers/pg/dev_db \
    && ./containers/elasticsearch.sh
}

# Dump database
database_dump() {
  pg_dump -d postgres -h localhost -p 5432 -U postgres -W > .pg_$1_$(date +%s).local
}

# Restore database
database_restore() {
  psql -d postgres -h localhost -p 5432 -U postgres -W < $1
}

# Start repl
repl() {
  lein repl
}

# Run formatter
lint() {
  lein cljfmt fix
}

alias reset='database_reset'
alias dump='database_dump'
alias restore='database_restore'
