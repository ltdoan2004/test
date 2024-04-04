#!/bin/bash
#SBATCH --job-name=training
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --partition=standard
#SBATCH --time=01:00:00
#SBATCH --output=training_%j.out
#SBATCH --error=training_%j.err

module load python/3.8
module load pytorch/1.8.1

# Chạy đoạn script Python
python main.py


