#!/bin/bash

#docker network create -d bridge --subnet=192.168.0.0/24 --gateway=192.168.0.1 --ip-range=192.168.0.0/24  multihost

docker network create --driver=bridge \
--subnet=192.168.0.0/24 --gateway=192.168.0.1 \
--ip-range=192.168.0.128/25 test
