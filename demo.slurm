#!/bin/bash

#SBATCH --job-name=pytorch_job
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=64G
#SBATCH --partition=gpu
#SBATCH --time=1-23:59:00
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

source activate test


python -c "import torch" || conda install pytorch torchvision -c pytorch

# Run the Python script
python main.py
