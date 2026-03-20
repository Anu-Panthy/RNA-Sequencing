  GNU nano 7.2                                                                    alignment.sh                                                                              #!usr/bin/bash
#!/usr/bin/bash
#Assign sample names
NAMES="SAMPLE1 SAMPLE2"

#Make a loop for mapping multiple samples
for SAMPLE in $NAMES; do
hisat2 -p 8 --no-unal --dta \
-x indexes/chrX_tran \
-1 samples/${SAMPLE}_R1.fastq.gz
-2 samples/${SAMPLE}_R2.fastq.gz
-S mapped_SAM/${SAMPLE}.sam \
--summary-file summary/${SAMPLE}_summary.txt
done







