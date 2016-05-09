#!/bin/bash

docker run -it --name node -P -w /code -v /home/theasker/code:/code node /bin/bash
