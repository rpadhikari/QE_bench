#!/bin/bash
#SBATCH -J CPU_QE           # Job name
#SBATCH -p normal        # name of partition for QE calculation
#SBATCH -o job.%j.out    # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1             # Total number of nodes requested
#SBATCH -n 1             # Total number of mpi tasks requested
#SBATCH -t 12:00:00      # Run time (hh:mm:ss)

# load needed modules
export OMP_NUM_THREADS=1
module load qe/7.2-ser

# run the calculation
pw.x < pw.in > pw_CPU.out
ph.x < ph.in > ph_CPU.out


