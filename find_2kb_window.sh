#!/bin/bash

# Find features in -b that are within -w bp of -a
bedtools window -a lincRNA.bed -b mRNA.bed -w 2000 > linc_mRNA_2kbp.txt
