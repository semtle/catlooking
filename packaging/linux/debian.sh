#!/bin/sh

VERSION=2.0
DEST=build/debian/catlooking-$VERSION

rm -rf build/debian
packaging/copy_source.sh $DEST
cd $DEST
dpkg-buildpackage -rfakeroot -uc -us -sa
