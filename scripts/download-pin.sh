#!/usr/bin/env bash

if [ $# -lt 1 ];
then
    echo "No version given. Defaulting to 3.28"
    ver=3.28
else
    ver=$1
fi

TARGET=pin-$ver

if [ -e "$TARGET" ];
then
    echo "File $TARGET already exists"
    exit 1
fi

if [ "$ver" == "3.28" ];
then
    FILE=pin-3.28-98749-g6643ecee5-gcc-linux
elif [ "$ver" == "3.29" ];
then
    FILE=pin-3.29-98790-g1a445fcd1-gcc-linux
elif [ "$ver" == "3.30" ];
then
    FILE=pin-3.30-98830-g1d7b601b3-gcc-linux
elif [ "$ver" == "3.31" ];
then
    FILE=pin-external-3.31-98869-gfa6f126a8-gcc-linux
else
    echo "Unsupported Pin version"
    exit 1
fi

FILENAME=$FILE.tar.gz
URL=https://software.intel.com/sites/landingpage/pintool/downloads/$FILENAME

wget $URL
tar xvzf $FILENAME

mv $FILE $TARGET
rm $FILENAME

echo "Downloaded Pin v$ver in $TARGET"
