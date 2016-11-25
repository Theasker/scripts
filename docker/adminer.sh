#!/bin/bash

docker run -d -p 80 --name adminer --link mysql:db clue/adminer
