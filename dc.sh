#!/usr/bin/env bash
# Runs docker-compose with the files to use by default with specified args
YMLFILES=( "caddy.yml" "bitwarden.yml" "syncthing.yml" "wg_ub.yml" "gluetun.yml" )
for i in "${YMLFILES[@]}"
do
  YMLARG=$YMLARG" -f "$i
done

docker-compose $YMLARG $@
