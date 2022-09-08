#!/bin/bash 

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=STARAlign        ### Job Name
#SBATCH --time=00-01:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=10       ### Number of cpus needed per task
#SBATCH --ntasks-per-node=1     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp          ### Account used for job submission
#SBATCH --output=results-%j.out    ### File in which to store job output
#SBATCH --error=results-%j.err     ### File in which to store job error messages

mydir="/projects/bgmp/anhthuyv/bioinfo/Bi622/QAA/"
#input1="22_3H_both_S16_L008_R1_001.trimmedpaired.fastq.gz"
#input2="22_3H_both_S16_L008_R2_001.trimmedpaired.fastq.gz"

input1="/trimmed/23_4A_control_S17_L008_R1_001.fastq.gz.trimmedpaired"
input2="/trimmed/23_4A_control_S17_L008_R2_001.fastq.gz.trimmedpaired"


/usr/bin/time -v STAR --runThreadN 9 \
--runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 \
--alignMatesGapMax 1000000 \
--readFilesCommand cat \
--readFilesIn $mydir$input1 $mydir$input2 \
--genomeDir $mydir/MouseAlignment/MouseSTARdb \
--outFileNamePrefix "23_4A_to_Mouse"
#--outFileNamePrefix "22_3H_to_Mouse"