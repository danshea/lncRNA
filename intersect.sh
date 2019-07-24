#!/bin/bash

# Total
bedtools intersect -a incRNA_total_fc_FPKM.tsv.bed -b mRNA_total_fc_FPKM.tsv.bed -wa -wb > incRNA_gene_total_overlap.bed

# Both are DE
bedtools intersect -a incRNA_fc_FPKM.tsv.bed -b mRNA_fc_FPKM.tsv.bed -wa -wb > incRNA_gene_DE_overlap.bed
