#!/bin/bash

# generate random id
MULTIPAPER_NODE_NAME=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)

# start multipaper node
java \
  -DbungeecordName=$MULTIPAPER_NODE_NAME \
  -Dspigot.settings.bungeecord=true \
  -Dproperties.server-port=25565 \
  -DmultipaperMasterAddress=$MULTIPAPER_MASTER_ADDRESS \
  -jar multipaper-1.19.2-37.jar \
  --nogui \