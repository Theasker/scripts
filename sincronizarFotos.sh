#!/bin/bash

# rsync -rtvu /home/theasker/Imágenes/ /mnt/datos1/fotos/
# rsync -rtvu /home/theasker/Imágenes/ /mnt/datos2/fotos/
# rsync -rtvu /home/theasker/Imágenes/ /run/media/theasker/Elements/fotos/

# rsync -rtvu /mnt/datos1/fotos/ /home/theasker/Imágenes/
rsync --delete -rtvu /mnt/datos1/fotos/ /mnt/datos2/fotos/
rsync --delete -rtvu /mnt/datos1/fotos/ /run/media/theasker/Elements/fotos/

# rsync -rtvu /mnt/datos2/fotos/ /home/theasker/Imágenes/
rsync --delete -rtvu /mnt/datos2/fotos/ /mnt/datos1/fotos/
rsync --delete -rtvu /mnt/datos2/fotos/ /run/media/theasker/Elements/fotos/

#rsync --delete -rtvu /run/media/theasker/LaCie/fotos/ /home/theasker/Imágenes/
rsync --delete -rtvu /run/media/theasker/Elements/fotos/ /mnt/datos1/fotos/
rsync --delete -rtvu /run/media/theasker/Elements/fotos/ /mnt/datos2/fotos/
