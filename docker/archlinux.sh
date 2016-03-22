#!/bin/bash

docker run -it --name archlinux -h archlinux -v /mnt/datos1/:/mnt/datos1 -P base/archlinux bash
