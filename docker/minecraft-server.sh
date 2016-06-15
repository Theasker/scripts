#!/bin/bash

#docker run -d --net="host" -v /dev/urandom:/dev/urandom -v /dev/random:/dev/random -v /mnt/datos2/:/mnt/multimedia -p 50500:50500 chimeracoder/mediatomb

docker run -d -v /mnt/datos1/util/Juegos/minecraft/server/:/data -e EULA=TRUE -p 25565:25565 --name mc itzg/minecraft-server
