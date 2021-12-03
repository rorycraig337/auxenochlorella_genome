#!/bin/bash
# Job name:
#SBATCH --job-name=process_reads
#
# Account:
#SBATCH --account=fc_halflife
#
# Partition:
#SBATCH --partition=savio2_htc
#
# Processors per task:
#SBATCH --cpus-per-task=1
#
# Wall clock limit -- 10 minutes
#SBATCH --time=01:00:00
#
## Command(s) to run:

#convert HiC fastq.bz2 to fastq.gz

cp /global/home/groups/fc_halflife/Auxenochlorella/UTEX250/Illumina_HiC/JMMX_OmniC_NA_NA_TGGTACAG_OmniC_Auxenochlorella_protothecoides_UTEX250-Auxenochlorella_OmniC_I1143_L4_R*.fastq.bz2 .
bunzip2 JMMX_OmniC_NA_NA_TGGTACAG_OmniC_Auxenochlorella_protothecoides_UTEX250-Auxenochlorella_OmniC_I1143_L4_R*.fastq.bz2
gzip JMMX_OmniC_NA_NA_TGGTACAG_OmniC_Auxenochlorella_protothecoides_UTEX250-Auxenochlorella_OmniC_I1143_L4_R*.fastq

#convert bam2fastq

cp /global/home/groups/fc_halflife/Auxenochlorella/UTEX250/PacBio_HiFi/m64069_211021_034937.hifi_reads.bam .
pbindex m64069_211021_034937.hifi_reads.bam
bam2fastq -o auxeno m64069_211021_034937.hifi_reads.bam
