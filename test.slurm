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

# Search for the available Python and PyTorch modules and store the names
PYTHON_MODULE=$(module spider python 2>&1 | grep "python/" | head -1 | awk '{print $2}')
PYTORCH_MODULE=$(module spider pytorch 2>&1 | grep "pytorch/" | head -1 | awk '{print $2}')

# Load the Python and PyTorch modules
module load $PYTHON_MODULE
module load $PYTORCH_MODULE

# Check if the modules are loaded correctly
module list

# Run the Python script
python main.py
