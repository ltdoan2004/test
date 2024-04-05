#!/bin/bash

#SBATCH --job-name=pytorch_job
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --partition=batch
#SBATCH --time=02:00:00
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

# Initialize Conda
source /home/tvtn1c23/.bashrc
# Or, if the above doesn't work, source the conda.sh script directly:
# source /home/tvtn1c23/miniconda3/etc/profile.d/conda.sh
# You might need to adjust the path above to match where conda is installed

# Activate the conda environment
conda activate test

# Check if PyTorch is already installed; install if it's not
python -c "import torch" || conda install pytorch torchvision -c pytorch

# Run the Python script
python main.py
