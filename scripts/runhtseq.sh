#!/bin/bash 

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=22_htseq2       ### Job Name
#SBATCH --time=00-05:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=10       ### Number of cpus needed per task
#SBATCH --ntasks-per-node=1     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp          ### Account used for job submission
#SBATCH --output=22_3H_htseq2_results-%j.out    ### File in which to store job output
#SBATCH --error=22_3H_htseq2_results-%j.err     ### File in which to store job error messages

mydir="/projects/bgmp/anhthuyv/bioinfo/Bi622/QAA/"

input="MouseAlignment/22_3H_to_Mouse_Aligned/22_3H_to_MouseAligned.out.sorted.sam"
gtf="MouseAlignment/Mus_musculus.GRCm39.107.gtf"
output="22_3H_to_Mouse_genemapped_revstranded.sam"

/usr/bin/time -v htseq-count -r pos -s reverse $input $gtf -o $output