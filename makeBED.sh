#!/bin/bash

# We need to switch the fold-change column and the transcript_id column so the files are in BED format

for file in incRNA_fc_FPKM.tsv  incRNA_total_fc_FPKM.tsv  mRNA_fc_FPKM.tsv  mRNA_total_fc_FPKM.tsv; do
	cut -f1-3,5 $file > foo
	cut -f4 $file | paste foo - > ${file}.bed
	[[ -f foo ]] && rm foo
done
