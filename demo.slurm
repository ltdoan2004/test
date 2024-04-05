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

source activate test

python main.py
