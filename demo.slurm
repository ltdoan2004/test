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

# Load Conda command line interface
source /home/tvtn1c23/miniconda3/etc/profile.d/conda.sh

# Activate the conda environment
conda activate test

# Check if PyTorch is already installed; if not, install it
# Skip this step if the machine does not have internet access
python -c "import torch" || conda install pytorch torchvision -c pytorch

# Run the Python script
python main.py
