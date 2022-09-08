Sample 22 stranded and reverse stranded mapped reads:

```
cat 22_3H_htseq1_results-22207720.out | awk '$1~"ENSMU"{sum+=$2} END {print sum}'

Stranded Mapped Reads:
141326

cat 22_3H_htseq1_results-22207720.out | awk '$1~"__"{sum+=$2} END {print sum}'

Stranded Unmapped Read:
3759801

cat 22_3H_htseq1_results-22207720.out | awk '{sum+=$2} END {print sum}'

Stranded Total Reads:
3901127

Stranded Percent Mapped: 
3.62%

Stranded Percent Unmapped:
96.38%

cat 22_3H_htseq2_results-22208418.out  | awk '$1~"ENSMU"{sum+=$2} END {print sum}'

Reverse Stranded Mapped Reads:
3228275

cat 22_3H_htseq2_results-22208418.out | awk '$1~"__"{sum+=$2} END {print sum}'

Reverse Stranded Unmapped Reads:
672852

cat 22_3H_htseq2_results-22208418.out  | awk '{sum+=$2} END {print sum}'

Reverse Total Reads:
3901127

Reverse Stranded Percent Mapped: 
82.75%

Revere Stranded Percent Unmapped:
17.25% 

```

Sample 23 stranded and reverse stranded mapped reads:
```
cat 23_4A_htseq1_results-22208180.out | awk '$1~"ENSMU"{sum+=$2} END {print sum}'

Stranded Mapped Reads:
1298933

cat 23_4A_htseq1_results-22208180.out | awk '$1~"__"{sum+=$2} END {print sum}'

Stranded Unmapped Reads:
40757643

cat 23_4A_htseq1_results-22208180.out | awk '{sum+=$2} END {print sum}'

Stranded Total Reads:
42056576

Stranded Percent Mapped:
3.09%

Stranded Percent Unmapped:
96.91%

cat 23_4A_htseq2_results-22208356.out | awk '$1~"ENSMU"{sum+=$2} END {print sum}'

Reverse Stranded Mapped Reads:
28696716

cat 23_4A_htseq2_results-22208356.out | awk '$1~"__"{sum+=$2} END {print sum}'

Reverse Stranded Unmapped Reads:
13359860

cat 23_4A_htseq2_results-22208356.out | awk '{sum+=$2} END {print sum}'

Reverse Stranded Total Reads:
42056576

Reverse Stranded Percent Mapped:
68.23% 

Reverse Stranded Percent Unmapped:
31.77%

```