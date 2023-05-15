

Samples to QC:
22_3H_both_S16_L008
23_4A_control_S17_L008

Location of gzipped fastq files:

```
/projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R1_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R2_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz
/projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R2_001.fastq.gz
```

```
zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R1_001.fastq.gz | wc -l

>16203596 /4 = 4050899

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R1_001.fastq.gz | head -4 | tail -1 |  wc
      1       1     102

zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz | wc -l 
>177213048 /4 = 44303262


zcat /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz | head -4 | tail -1 |  wc 


```module load fastqc``` 

```

fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R1_001.fastq.gz" --outdir=22_3H_R1_fastqc

fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R2_001.fastq.gz" --outdir=22_3H_R2_fastqc

fastqc /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz --outdir=23_4A_control_R1

fastqc "/projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R2_001.fastq.gz" --outdir=23_4A_control_R2

```

FASTQC RUNTIMES: 

```
	Command being timed: "fastqc /projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R2_001.fastq.gz --outdir=22_3H_R2_fastqc"
	User time (seconds): 24.80
	System time (seconds): 0.72
	Percent of CPU this job got: 97%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:26.22
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 197576
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 19342
	Voluntary context switches: 1847
	Involuntary context switches: 881
	Swaps: 0
	File system inputs: 0
	File system outputs: 1408
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0

    Command being timed: "fastqc /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz --outdir=23_4A_control_R1_fastqc"
	User time (seconds): 234.60
	System time (seconds): 6.65
	Percent of CPU this job got: 99%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 4:01.79
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 198864
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 25489
	Voluntary context switches: 10140
	Involuntary context switches: 6744
	Swaps: 0
	File system inputs: 0
	File system outputs: 1664
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0

	Command being timed: "fastqc /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R1_001.fastq.gz --outdir=23_4A_control_R1"
	User time (seconds): 233.82
	System time (seconds): 7.35
	Percent of CPU this job got: 99%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 4:01.83
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 198560
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 25948
	Voluntary context switches: 10141
	Involuntary context switches: 6862
	Swaps: 0
	File system inputs: 0
	File system outputs: 1664
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0

    Command being timed: "fastqc /projects/bgmp/shared/2017_sequencing/demultiplexed/23_4A_control_S17_L008_R2_001.fastq.gz --outdir=23_4A_control_R2"
	User time (seconds): 239.39
	System time (seconds): 8.40
	Percent of CPU this job got: 99%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 4:08.69
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 198864
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 25304
	Voluntary context switches: 10249
	Involuntary context switches: 5777
	Swaps: 0
	File system inputs: 0
	File system outputs: 1648
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
```


see ```runQscore.sh``` and ```meanQscore.py``` for running quality scores on samples: 

Runtimes: 



	Command being timed: "../Demultiplex/meanQscore.py -s 4050899 -b 101 -f /projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R1_001.fastq.gz -o 22_3H_both_R1"
	User time (seconds): 178.03
	System time (seconds): 0.16
	Percent of CPU this job got: 96%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 3:04.27
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 70476
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 32207
	Voluntary context switches: 2592
	Involuntary context switches: 124
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0

	Command being timed: "../Demultiplex/meanQscore.py -s 4050899 -b 101 -f /projects/bgmp/shared/2017_sequencing/demultiplexed/22_3H_both_S16_L008_R2_001.fastq.gz -o 22_3H_both_R2"
	User time (seconds): 180.15
	System time (seconds): 0.12
	Percent of CPU this job got: 99%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 3:00.32
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 73060
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 31995
	Voluntary context switches: 471
	Involuntary context switches: 116
	Swaps: 0
	File system inputs: 0
	File system outputs: 0
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
