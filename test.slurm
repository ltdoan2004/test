#!/bin/bash

#SBATCH --job-name=demo_job           # Job name
#SBATCH --nodes=1                     # Run all processes on a single node
#SBATCH --ntasks=1                    # Run a single task        
#SBATCH --cpus-per-task=1             # Number of CPU cores per task
#SBATCH --mem=4GB                     # Job memory request
#SBATCH --time=00:05:00               # Time limit hrs:min:sec
#SBATCH --output=demo_job_%j.log      # Standard output and error log

module load python3                    # Load Python module. Adjust if necessary.
python demo.py                         # Run the python script
