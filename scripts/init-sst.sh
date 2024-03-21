#!/usr/bin/env bash
set -euo pipefail
set -x
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

CORE_BRANCH=master
ELEMENTS_BRANCH=devel

M4_VER=1.4.19
AC_VER=2.72
AM_VER=1.16.5
LT_VER=2.4.7

if [ -z ${SST_INSTALL+x} ];
then
    echo "SST_INSTALL is not set. Please source ./env.sh first."
    exit
fi

mkdir -p $SCRIPT_DIR/autotools
cd autotools
wget https://ftp.gnu.org/gnu/m4/m4-$M4_VER.tar.xz
wget https://ftp.gnu.org/gnu/autoconf/autoconf-$AC_VER.tar.xz
wget https://ftp.gnu.org/gnu/automake/automake-$AM_VER.tar.xz
wget https://ftp.gnu.org/gnu/libtool/libtool-$LT_VER.tar.xz

tar xf m4-$M4_VER.tar.xz
tar xf autoconf-$AC_VER.tar.xz
tar xf automake-$AM_VER.tar.xz
tar xf libtool-$LT_VER.tar.xz

cd m4-$M4_VER
./configure --prefix=$SST_INSTALL
make all install

cd ../autoconf-$AC_VER
./configure --prefix=$SST_INSTALL
make all install

cd ../automake-$AM_VER
./configure --prefix=$SST_INSTALL
make all install

cd ../libtool-$LT_VER
./configure --prefix=$SST_INSTALL
make all install

cd $SCRIPT_DIR

if [ -n ${INTEL_PIN_DIRECTORY+x} ];
then
    if [ ! -d ${INTEL_PIN_DIRECTORY} ];
    then
        echo "Error: INTEL_PIN_DIRECTORY variable set but does not point to a directory. Please install pin at $INTEL_PIN_DIRECTORY"
        exit
    fi
fi

if [ ! -d "./sst-core" ];
then
    git clone git@github.com:sstsimulator/sst-core.git
    cd sst-core
    git switch $CORE_BRANCH
    ./autogen.sh
    ./configure --prefix=$SST_INSTALL --disable-mpi
    make -j8 install
else
    echo "The sst-core directory already exists. Skipping."
fi

cd $SCRIPT_DIR

if [ ! -d "./sst-elements" ];
then
    git clone git@github.com:sstsimulator/sst-elements.git
    cd sst-elements
    git switch $ELEMENTS_BRANCH
    ./autogen.sh
    ./configure --prefix=$SST_INSTALL --with-pin=$INTEL_PIN_DIRECTORY
    make -j8 install
else
    echo "The sst-elements directory already exists. Skipping."
fi
