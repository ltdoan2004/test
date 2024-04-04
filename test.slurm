#!/bin/bash

#SBATCH --nodes=1
#SBATCH --mem=4G  # Adjust memory to what is required for your task
#SBATCH --job-name=TEST_JOB
#SBATCH --ntasks=10
#SBATCH --ntasks-per-node=10
#SBATCH --partition=scavenger  # Make sure this is a valid partition
#SBATCH --time=01:00:00
#SBATCH --output=training_%j.out
#SBATCH --error=training_%j.err

# Load the necessary modules (after verifying the correct versions with `module avail`)
module load python
module load pytorch

# Activate virtual environment if necessary
# source /path/to/venv/bin/activate

# Chạy đoạn script Python
python main.py
