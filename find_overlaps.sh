#!/bin/bash

# Note: -S forces opposite strandedness
bedtools intersect -S -a Brapa_v1.5.gffread.fixed.gff -b NAT.gtf -wa -wb | grep -E '	gene	' > NAT_gene_overlaps.txt

# Note: -s forces same strandedness
bedtools intersect -s -a Brapa_v1.5.gffread.fixed.gff -b incRNA.gtf -wa -wb | grep -E '	gene	' > incRNA_gene_overlaps.txt
