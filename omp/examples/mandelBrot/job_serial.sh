#!/bin/bash
#SBATCH --job-name="mandelSerial"
#SBATCH -o %A.out
#SBATCH -e %A.err
#SBATCH -p test.q
#SBATCH -t 00:05:00
#SBATCH -c 1
#SBATCH --nodes=1
module purge

module load gcc

./mandel.exe
