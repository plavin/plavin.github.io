#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export LOCAL_INSTALL=$SCRIPT_DIR/install
export PATH=$LOCAL_INSTALL/bin:$PATH
export LIBRARY_PATH=$LOCAL_INSTALL/lib:$LIBRARY_PATH
export LIBRARY_PATH=$LOCAL_INSTALL/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=$LOCAL_INSTALL/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LOCAL_INSTALL/lib64:$LD_LIBRARY_PATH
export CPATH=$LOCAL_INSTALL/include:$CPATH
export C_INCLUDE_PATH=$LOCAL_INSTALL/include:$C_INCLUDE_PATH
export CPP_INCLUDE_PATH=$LOCAL_INSTALL/include:$CPP_INCLUDE_PATH

# module load gcc openmpi cuda cudatoolkit cmake python
