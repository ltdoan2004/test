#!/bin/bash
#SBATCH --job-name=training

#SBATCH --ntasks=10
$SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --partition=standard
#SBATCH --time=01:00:00
#SBATCH --output=training_%j.out
#SBATCH --error=training_%j.err

module load python/3.8
module load pytorch/1.8.1

# Chạy đoạn script Python
python main.py


