#!/usr/bin/env bash
# Runs docker-compose with the files to use by default with specified args
YMLFILES=( "caddy" "bitwarden" "syncthing" "organizr" "netdata" "speedtest" "agh" "uptime-kuma" "nginx" "gt_ub" "red")
for i in "${YMLFILES[@]}"
do
  YMLARG=$YMLARG" -f "$i".yml"
done

docker-compose $YMLARG $@
