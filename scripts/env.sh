#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export SST_INSTALL=${SCRIPT_DIR}/install
export SST_ELEMENTS_ROOT=${SCRIPT_DIR}/sst-elements

export INTEL_PIN_DIRECTORY=${HOME}/pin/pin-3.28
export INTEL_PIN_DIR=${INTEL_PIN_DIRECTORY}
export PIN_HOME=${INTEL_PIN_DIRECTORY}

export PATH=${SST_INSTALL}/bin:$PATH
export LD_LIBRARY_PATH=${SST_INSTALL}/lib:${SST_INSTALL}/lib64:${SST_ELEMENTS_ROOT}/src/sst/elements/ariel/api:$LD_LIBRARY_PATH

module load gcc
module load mpi/openmpi-4.1.4
