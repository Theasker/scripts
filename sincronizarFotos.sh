#!/bin/bash

rsync -rtvu /home/theasker/Imágenes/ /mnt/datos1/fotos/
rsync -rtvu /home/theasker/Imágenes/ /mnt/datos2/fotos/
rsync -rtvu /home/theasker/Imágenes/ /media/LaCie/fotos/

rsync -rtvu /mnt/datos1/fotos/ /home/theasker/Imágenes/
rsync -rtvu /mnt/datos1/fotos/ /mnt/datos2/fotos/
rsync -rtvu /mnt/datos1/fotos/ /media/LaCie/fotos/

rsync -rtvu /mnt/datos2/fotos/ /home/theasker/Imágenes/
rsync -rtvu /mnt/datos2/fotos/ /mnt/datos1/fotos/
rsync -rtvu /mnt/datos2/fotos/ /media/LaCie/fotos/

rsync -rtvu /media/LaCie/fotos/ /home/theasker/Imágenes/
rsync -rtvu /media/LaCie/fotos/ /mnt/datos1/fotos/
rsync -rtvu /media/LaCie/fotos/ /mnt/datos2/fotos/
