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

# Activate the conda environment
conda create -n demoenv python=3.8

conda activate demoenv


# Check if PyTorch is already installed; install if it's not
python -c "import torch" || conda install pytorch torchvision -c pytorch

# Run the Python script
python main.py
