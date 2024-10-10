#!/bin/bash
#SBATCH --job-name="HelloWorld"
#SBATCH -o %A.out
#SBATCH -e %A.err
#SBATCH -p test.q
#SBATCH -t 00:05:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
module purge
module load intel/2023.2
module load intelmpi/intel/2021.10
mpirun -np 4 ./helloworld

