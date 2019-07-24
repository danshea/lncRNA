#!/bin/bash

# Dan Shea
# 2017.05.06

# From a thread by Istvan Albert on Biostars https://www.biostars.org/p/92935/
# Today we have run into the task of having to split strand specific RNA-Seq data
# by strand and we had to make an effort to get it right (hopefully it is right).
# Maybe there is even an easier way to do it.

# The Illumina strand specific protocol is such that only the fragment of the 
# original orientation is sequenced. But as it happens the reverse complement of
# it will actually be sequenced and is placed into file R1. The mate pair that 
# goes into file R2 will be the reverse complement of the fragment starting in R1
# and thus its orientation will correspond to the original orientation.

# This makes the protocol produce a R2-R1 read orientation.

# Here is our script that splits a bam file into two fwd.bam and rev.bam each 
# containing the alignments that are in the transcriptional direction.

# To see what the various sam flags mean refer to:
# https://broadinstitute.github.io/picard/explain-flags.html

# Note: I have further modified Istvan's script as it pertains to selecting only
# from regions of interest regarding our BrFLC2 and BrFLC2-NAT exons.

# Extract regions for the BrFLC2 and BrFLC2 NAT
for bam in s11_NV.sample1.sorted.bam s11_NV.sample2.sorted.bam s11_4V.sample1.sorted.bam s11_4V.sample2.sorted.bam; do
	output=$(basename $bam | cut -d. -f1,2,3)
# bra028599 maps to the reverse strand, so here we want reads that map in the
# FR orientation.

# Reverse strand
#
# 1. alignments of the second in pair if they map to the reverse strand
# 2. alignments of the first in pair if they map to the forward strand
#
	rev1=${output}.bra028599.rev1.bam
	rev2=${output}.bra028599.rev2.bam
# Second in the pair, mapped to the reverse strand
	samtools view -@ 10 -L BrFLC2.bed -b $bam -f 144 -o $rev1
# First in the pair, but NOT mapped to the reverse strand
	samtools view -@ 10 -L BrFLC2.bed -b $bam -f 64 -F 16 -o $rev2

#
# Combine alignments that originate on the reverse strand.
#
	revout=${output}.bra028599.rev.bam
	samtools merge -f $revout $rev1 $rev2
	samtools index $revout

# Likewise, bra028599-nat maps to the forward strand, so here we want reads that
# map in the RF orientation.

# Forward strand.
#
# 1. alignments of the second in pair if they map to the forward strand
# 2. alignments of the first in pair if they map to the reverse  strand
#
	fwd1=${output}.MSTRG2765.fwd1.bam
	fwd2=${output}.MSTRG2765.fwd2.bam
# Second in the pair, but NOT mapped to the reverse strand
	samtools view -@ 10 -L BrFLC2_NAT.bed -f 128 -F 16 -b $bam -o $fwd1
# First in the pair, mapped to the reverse strand
	samtools view -@ 10 -L BrFLC2_NAT.bed -f 80 -b $bam -o $fwd2

#
# Combine alignments that originate on the forward strand.
#
	fwdout=${output}.MSTRG2765.fwd.bam
	samtools merge -f $fwdout $fwd1 $fwd2
	samtools index $fwdout

done

# NOTE:
# If keeping full pairs is essential then the filtering steps need to be 
# performed to operate on mates like so:

# FORWARD STRAND
# 1. alignments of the second in pair if they map to the forward strand
# 2. alignments of the first in pair if their mate maps to the forward strand
#
# Second in the pair, but NOT mapped to the reverse strand
# samtools view -b -f 128 -F 16 $DATA > fwd1.bam
# samtools index fwd1.bam
#
# First in the pair, mate is NOT on the reverse strand
# samtools view -b -f 64 -F 32 $DATA > fwd2.bam
# samtools index fwd2.bam

# REVERSE STRAND
# 1. alignments of the second in pair if it maps to the reverse strand
# 2. alignments of the first in pair if their mates map to the reverse strand
#
# Second in the pair, mapped to the reverse strand
# samtools view -b -f 144 $DATA > rev1.bam
# samtools index rev1.bam
#
# First in the pair, mate is on reverse strand
# samtools view -b -f 96 $DATA > rev2.bam
# samtools index rev2.bam
