#!/bin/bash
#SBATCH --job-name=training
#SBATCH --output=result_%j.out
#SBATCH --error=error_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=01:00:00
#SBATCH --mem=4G

module load python/3.8
module load pytorch/1.8.0

python main.py
