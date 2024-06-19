#!/bin/bash
DIST=$2
SRC=/home/u/src
ALL=$DIST$SRC/../*
OUT=build/`date -Iminutes`
rm 0
sudo mount -o bind $1 $DIST$SRC
sudo chroot $DIST /bin/bash -c "export OVERRIDE_RELEASE=$3; cd $SRC; DEB_BUILD_OPTIONS="nocheck" dpkg-buildpackage -b -uc -us 2>&1 | tee build.log"
sudo umount $DIST$SRC
mkdir $OUT
mv $ALL.deb $ALL.changes $ALL.buildinfo $OUT
ln -s $OUT 0
