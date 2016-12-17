#!/bin/bash
docker run -it -v /home/theasker/code:/var/www/html --name vol_htmlcode debian /bin/false
docker run -it --name debian -h debian --volumes-from vol_htmlcode -P debian bash
