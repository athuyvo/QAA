#!/bin/env bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=readdistr    ### Job Name
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=1       ### Number of cpus needed per task
#SBATCH --ntasks-per-node=1     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp          ### Account used for job submission
#SBATCH --output=results-%j.out    ### File in which to store job output
#SBATCH --error=results-%j.err     ### File in which to store job error messages

cat 22_3H_both_S16_L008_R1_001.fastq.gz.trimmedpaired | grep -A1 "^@" | grep -v "^@" | grep -v "^--"| awk '{print length($0)}' | sort | uniq -c | sort -n > "22_3H_both_R1_trimmed_read_distr.tsv"

cat 22_3H_both_S16_L008_R2_001.fastq.gz.trimmedpaired | grep -A1 "^@" | grep -v "^@" | grep -v "^--"| awk '{print length($0)}' | sort | uniq -c | sort -n > "22_3H_both_R2_trimmed_read_distr.tsv"

cat 23_4A_control_S17_L008_R1_001.fastq.gz.trimmedpaired | grep -A1 "^@" | grep -v "^@" | grep -v "^--"| awk '{print length($0)}' | sort | uniq -c | sort -n > "23_4A_control_R1_trimmed_read_distr.tsv"

cat 23_4A_control_S17_L008_R2_001.fastq.gz.trimmedpaired | grep -A1 "^@" | grep -v "^@" | grep -v "^--"| awk '{print length($0)}' | sort | uniq -c | sort -n > "23_4A_control_R2_trimmed_read_distr.tsv"