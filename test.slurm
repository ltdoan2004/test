#!/bin/bash

#SBATCH --job-name=parallel_sum_py2   # Job name
#SBATCH --nodes=1                     # Run all processes on a single node
#SBATCH --ntasks=1                    # Run a single task		
#SBATCH --cpus-per-task=4             # Number of CPU cores per task
#SBATCH --mem=1GB                     # Job memory request
#SBATCH --time=00:05:00               # Time limit hh:mm:ss
#SBATCH --output=parallel_sum_%j.log  # Standard output and error log

module load python2                   # Load the python2 module, replace with your specific version

python demo.py
