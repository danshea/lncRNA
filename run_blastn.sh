#!/bin/bash

# We will run blastn using the sequences extracted from the B. rapa V1.5
# reference genome using the locus field defined in the gene_exp.diff file.

#### Compare to B. oleracea (C genome)

blastn -task blastn -query putative_lincRNAs_20170726.fasta -db Boleracea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Boleracea_lincRNAs_20170726.txt
blastn -task blastn -query putative_incRNAs_20170726.fasta -db Boleracea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Boleracea_incRNAs_20170726.txt
blastn -task blastn -query putative_NATs_20170726.fasta -db Boleracea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Boleracea_NATs_20170726.txt
blastn -task blastn -query putative_mRNAs_20170726.fasta -db Boleracea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Boleracea_putative_mRNAs_20170726.txt

#### Compare to B. nigra (B genome)

blastn -task blastn -query putative_lincRNAs_20170726.fasta -db Bnigra -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnigra_lincRNAs_20170726.txt
blastn -task blastn -query putative_incRNAs_20170726.fasta -db Bnigra -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnigra_incRNAs_20170726.txt
blastn -task blastn -query putative_NATs_20170726.fasta -db Bnigra -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnigra_NATs_20170726.txt
blastn -task blastn -query putative_mRNAs_20170726.fasta -db Bnigra -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnigra_putative_mRNAs_20170726.txt

#### Compare to B. juncea (AABB genome)

blastn -task blastn -query putative_lincRNAs_20170726.fasta -db Bjuncea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bjuncea_lincRNAs_20170726.txt
blastn -task blastn -query putative_incRNAs_20170726.fasta -db Bjuncea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bjuncea_incRNAs_20170726.txt
blastn -task blastn -query putative_NATs_20170726.fasta -db Bjuncea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bjuncea_NATs_20170726.txt
blastn -task blastn -query putative_mRNAs_20170726.fasta -db Bjuncea -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bjuncea_putative_mRNAs_20170726.txt

#### Compare to B. napus (AACC genome)

blastn -task blastn -query putative_lincRNAs_20170726.fasta -db Bnapus -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnapus_lincRNAs_20170726.txt
blastn -task blastn -query putative_incRNAs_20170726.fasta -db Bnapus -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnapus_incRNAs_20170726.txt
blastn -task blastn -query putative_NATs_20170726.fasta -db Bnapus -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnapus_NATs_20170726.txt
blastn -task blastn -query putative_mRNAs_20170726.fasta -db Bnapus -num_threads 10 -max_target_seqs 1 -max_hsps 1 -evalue 1e-10 -outfmt 7 > Bnapus_putative_mRNAs_20170726.txt
