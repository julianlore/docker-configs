#!/usr/bin/env bash
# Runs docker-compose with the files to use by default with specified args
YMLFILES=( "bitwarden" "syncthing" "organizr" "netdata" "speedtest" "agh" "nginx" "red" "linkding" "acme" "radicale")
for i in "${YMLFILES[@]}"
do
  YMLARG=$YMLARG" -f "$i".yml"
done

docker-compose $YMLARG $@
