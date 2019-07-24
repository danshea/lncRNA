#!/bin/bash

# Note: -F treats a pattern a a string literal, because the pattern contains
# '.' characters

while read NAT; do
  grep -F $NAT stringtie_merged.gtf | egrep -e '	transcript	' >> NAT.gtf
done < putative_NAT_major_iso_id.txt

while read incRNA; do
  grep -F $incRNA stringtie_merged.gtf | egrep -e '	transcript	' >> incRNA.gtf
done < putative_incRNA_major_iso_id.txt
