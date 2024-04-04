#!/bin/bash

#SBATCH --nodes=1
#SBATCH --mem=1000
#SBATCH --job-name=TEST_JOB
#SBATCH --ntasks=10
#SBATCH --ntasks-per-node=10
#SBATCH --partition=main
#SBATCH --time=01:00:00
#SBATCH --output=training_%j.out
#SBATCH --error=training_%j.err

module load python/3.8
module load pytorch/1.8.1

# Chạy đoạn script Python
python main.py
