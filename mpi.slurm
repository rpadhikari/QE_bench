#!/bin/bash
#SBATCH -J MPI_QE      # Job name
#SBATCH -p normal        # name of partition for QE calculation
#SBATCH -o job.%j.out    # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1             # Total number of nodes requested
#SBATCH -n 16             # Total number of mpi tasks requested
#SBATCH -t 12:00:00      # Run time (hh:mm:ss)

# load needed modules
export OMP_NUM_THREADS=1
module load qe/7.2

# run the calculation
mpirun -np 16 pw.x -nk 1 -npw 16 -in pw.in > pw_MPI.out
mpirun -np 16 ph.x -nk 1 -npw 16 -in ph.in > ph_MPI.out

