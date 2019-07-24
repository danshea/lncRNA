#!/bin/bash

# We have intergenic transcripts, we want to check the non-rendundant database to see if any of these match known genes
blastx -db swissprot -query putative_intergenic_lncRNAs.fasta -max_target_seqs 1 -num_threads 10 -evalue 1e-10 -outfmt 7 > putative_intergenic_lncRNAs.swissprot.blastx.out
