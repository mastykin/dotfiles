#!/bin/bash
set -e
BASE=/home/m/chroot
DIST=$1
debootstrap --no-check-gpg  --variant=minbase --components=main,contrib,non-free 1.8_x86-64 $BASE/$DIST ftp://10.177.5.111/astra/testing/1.8.0.2/installation
#mount -o loop $1 $BASE/iso/
#debootstrap --no-check-gpg  --variant=minbase --components=main,contrib,non-free stable $BASE/$DIST file://$BASE/iso
#umount $BASE/iso
