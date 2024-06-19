#!/bin/bash
DIST=$3
SRC=/home/u/src
sudo mount -o bind $1 $DIST$SRC
sudo chroot $DIST /bin/bash -c "$5 make -C /lib/modules/$4/build M=$SRC/$2 modules 2>&1 | sed s+$SRC+$1+"
sudo umount $DIST$SRC
