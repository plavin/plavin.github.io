#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export SST_INSTALL=${SCRIPT_DIR}/install
export INTEL_PIN_DIRECTORY=${SCRIPT_DIR}/pin-3.28
export INTEL_PIN_DIR=${INTEL_PIN_DIRECTORY}
export PIN_HOME=${INTEL_PIN_DIRECTORY}
export PATH=${SST_INSTALL}/bin/:$PATH

