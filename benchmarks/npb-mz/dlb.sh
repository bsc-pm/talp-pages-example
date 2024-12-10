#!/bin/bash

# Preload DLB assuming that DLB_HOME is set beforehand
export LD_PRELOAD+=":${DLB_HOME}/lib/libdlb_mpi.so" 
# Set DLB_ARGS to use OpenMP,PAPI and write the pop-metrics summary into the talp.json file
export DLB_ARGS="--talp-openmp --ompt --talp --talp-summary=pop-metrics --talp-papi=yes --talp-output-file=talp.json"


# Execute the things passed after dlb.sh 
$*