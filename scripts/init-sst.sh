#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

CORE_BRANCH=master
ELEMENTS_BRANCH=devel

if [ -z ${SST_INSTALL+x} ];
then
    echo "SST_INSTALL is not set. Please source ./env.sh first."
    exit
fi

if [ -n ${INTEL_PIN_DIRECTORY+x} ];
then
    if [ ! -d ${INTEL_PIN_DIRECTORY} ];
    then
        echo "Error: INTEL_PIN_DIRECTORY variable set but does not point to a directory. Please install pin at $INTEL_PIN_DIRECTORY"
        echo "  -> https://www.intel.com/content/www/us/en/developer/articles/tool/pin-a-binary-instrumentation-tool-downloads.html"
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
