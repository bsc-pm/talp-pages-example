#!/bin/bash -l
#SBATCH -J npb-performance-run
# Standard output and error
#SBATCH -o job.out
#SBATCH --exclusive
# Number of nodes
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=56
#SBATCH --cpus-per-task=2
#SBATCH --ntasks-per-socket=1
#SBATCH --time=00:10:00
    
module load dlb

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export OMP_PLACES=cores
export OMP_PROC_BIND=close

# Marenostrum 5 FIX (https://www.bsc.es/supportkc/docs/MareNostrum5/new_essentials/#slurm-changes-with-performance-implications)
export SRUN_CPUS_PER_TASK=${SLURM_CPUS_PER_TASK}

srun ../../../dlb.sh ../../../../../src/npb-mz/NPB3.4-MZ-MPI/bin/bt-mz.B.x