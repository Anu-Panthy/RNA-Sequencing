#!/usr/bin/bash
# Create required directories (Use mkdir -p to avoid errors if the directory or its parents already exist)
mkdir -p sorted_BAM counts
# Assign sample names
NAMES="SAMPLE1"
# Loop through each sample
for SAMPLE in $NAMES; do
    # Sort SAM to BAM and save in sorted BAM directory
    samtools sort -o sorted_BAM/${SAMPLE}.sorted.bam mapped_SAM/${SAMPLE}.sam
    # Index the sorted BAM file
    samtools index sorted_BAM/${SAMPLE}.sorted.bam
    # Run htseq-count to count reads
    htseq-count -i gene_id -f bam -t exon -m intersection-nonempty -s no \
    sorted_BAM/${SAMPLE}.sorted.bam genes/chrX.gtf > counts/${SAMPLE}.count.txt
done