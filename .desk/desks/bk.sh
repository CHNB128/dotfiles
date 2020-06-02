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

database_local() {
  pgcli -h localhost -U postgres -W
}

database_stage() {
  pgcli -h test-db.c9wcr7bm7aba.eu-west-3.rds.amazonaws.com -U root -d testdb -W
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
alias db-local='database_local'
alias db-stage='database_stage'
