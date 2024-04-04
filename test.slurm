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

# Load the dependencies first
# For example, if the spider command indicates you need to load cuda/10.1
module load cuda/10.1

# Then load the PyTorch module
module load pytorch/0.3.1

# Check if the modules are loaded correctly
module list

# Activate virtual environment if necessary
# source myenv/bin/activate

# Run the Python script
python main.py
