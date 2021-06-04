#!/usr/bin/env bash
# Backup private data folders not under version control to Syncthing
SYNC="data/syncthing/Sync/VPS"
rsync -r data/bw-data/db.sqlite3 $SYNC/bw-data
rsync -r data/bw-data/rsa_key* $SYNC/bw-data
rsync -r data/syncthing/config $SYNC/syncthing
