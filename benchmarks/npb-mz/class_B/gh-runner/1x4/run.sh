#!/bin/bash

export OMP_NUM_THREADS=4
export OMP_PLACES=cores
export OMP_PROC_BIND=close

# We preload the LLVM-Runtime as it implements the GOMP API and has OMPT support, which we need for TALP-OpenMP
export LD_PRELOAD="/usr/lib/llvm-19/lib/libomp-19.so.5"
mpirun --allow-run-as-root -n 1  ../../../dlb.sh ../../../../../src/npb-mz/NPB3.4-MZ-MPI/bin/bt-mz.B.x