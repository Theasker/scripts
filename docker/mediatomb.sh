#!/bin/bash

# 1900/udp -> 0.0.0.0:32768
# 49152/tcp -> 0.0.0.0:32768

#docker run -d -p 1900:1900 -p 49152:49152  -v /mnt/datos2/:/mnt/multimedia --name mediatomb -h mediatomb luckygerbils/mediatomb

docker run -d --net="host" -v /dev/urandom:/dev/urandom -v /dev/random:/dev/random -v /mnt/datos2/:/mnt/multimedia -p 50500:50500 chimeracoder/mediatomb
