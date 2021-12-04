#!/bin/bash
# Job name:
#SBATCH --job-name=hifiasm_1
#
# Account:
#SBATCH --account=fc_halflife
#
# Partition:
#SBATCH --partition=savio2
#
# Request one node:
#SBATCH --nodes=1
#
# Specify one task:
#SBATCH --ntasks-per-node=1
#
# Number of processors for single task needed for use case (example):
#SBATCH --cpus-per-task=24
#
# Wall clock limit
#SBATCH --time=06:00:00
#
## Command(s) to run:

#hifiasm run 1
~/programs/hifiasm/hifiasm -o auxenochlorella_1.asm -t24 --h1 ../read_processing/JMMX_OmniC_NA_NA_TGGTACAG_OmniC_Auxenochlorella_protothecoides_UTEX250-Auxenochlorella_OmniC_I1143_L4_R1.fastq.gz --h2 ../read_processing/JMMX_OmniC_NA_NA_TGGTACAG_OmniC_Auxenochlorella_protothecoides_UTEX250-Auxenochlorella_OmniC_I1143_L4_R2.fastq.gz ../read_processing/auxeno.fastq.gz
