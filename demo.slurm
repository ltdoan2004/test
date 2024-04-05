#!/bin/bash

#SBATCH --job-name=pytorch_cifar10          # Job name
#SBATCH --partition=gpu                     # Partition name, if you have a GPU partition
#SBATCH --nodes=1
#SBATCH --gres=gpu:1                        # Request one GPU, adjust the number as needed
#SBATCH --mem=16G                           # Memory total in MB (for all cores)
#SBATCH --time=02:00:00                     # Time limit hrs:min:sec
#SBATCH --output=pytorch_cifar10_%j.log     # Standard output and error log
#SBATCH --cpus-per-task=4                   # Number of CPU cores per task
#SBATCH --output=pytorch_job_%j.out
#SBATCH --error=pytorch_job_%j.err

module load python                      
module load cuda                      
module load torch               
module load torchvision

python main.py                              # Run your Python script
