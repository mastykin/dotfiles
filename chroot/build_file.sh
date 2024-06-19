#!/bin/bash
DIST=$1
SRC=/home/u/src
OUTPUT=$SRC/$3
for i in $4; do
	INPUT+=" $SRC/$i"
done
sudo mount -o bind $2 $DIST$SRC
sudo chroot $DIST /bin/bash -c "gcc -Wall -o $OUTPUT $INPUT $5 2>&1 | sed s+$SRC+$2+"
sudo umount $DIST$SRC
