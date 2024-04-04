#!/bin/bash
#SBATCH --job-name=training
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --partition=batch  
#SBATCH --time=02:00:00
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

# Load the chosen version of Python
module spider python/3.9.7

# Load the PyTorch module
module spider pytorch/0.3.1

# Check if the modules are loaded correctly
module list

# Run the Python script
python main.py
