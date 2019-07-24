#!/bin/bash

# Extract the transcripts from the stringtie merged GTF using the B. rapa reference sequence
/dsu0/LocalSoftware/GFFUtilities/gffread/gffread -w transcripts.20170727.fasta -g ../reference/fasta/Brapa_v1.5.fa stringtie_merged.gtf
