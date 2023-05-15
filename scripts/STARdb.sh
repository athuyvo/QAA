#!/bin/bash 

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=STARdb        ### Job Name
#SBATCH --time=00-00:30:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=8       ### Number of cpus needed per task
#SBATCH --ntasks-per-node=1     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp          ### Account used for job submission
#SBATCH --output=results-%j.out    ### File in which to store job output
#SBATCH --error=results-%j.err     ### File in which to store job error messages

 
mydir="/projects/bgmp/anhthuyv/bioinfo/Bi622/QAA/MouseAlignment/"

/usr/bin/time -v STAR --runThreadN 8 --runMode genomeGenerate \
--genomeDir $mydir"MouseSTARdb/" \
--genomeFastaFiles $mydir"Mus_musculus.GRCm39.dna_rm.primary_assembly.fa" \
--sjdbGTFfile $mydir"Mus_musculus.GRCm39.107.gtf" 
