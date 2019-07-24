#!/bin/bash

# Find closest feature to -a in -b report the distance as the last column and 
# only the the first closest feature in the case of ties
bedtools closest -a lincRNA.bed -b mRNA.bed -d -t first > linc_mRNA_closest.txt
