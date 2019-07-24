#!/usr/bin/env python

################################################################################
#
# Name: extractTargetTranscripts.py
# Date: 2016-10-10
# Author: dshea
# Description: Extract the antisense target sequences we are interested in.
#
################################################################################

from Bio import SeqIO
import sys

def main():
	NVtargets = ['s11_NV.3605.1', 's11_NV.33166.1',]
	Vtargets  = ['s11_4V.3554.1', 's11_4V.33062.1', 's11_4V.33062.2',]
	NVseqFile = 's11_NV.fa'
	VseqFile  = 's11_4V.fa'
	NVseqs    = SeqIO.parse(NVseqFile, 'fasta')
	Vseqs     = SeqIO.parse(VseqFile, 'fasta')
	NVtranscripts = [seq for seq in NVseqs if seq.id in NVtargets]
	Vtranscripts  = [seq for seq in Vseqs if seq.id in Vtargets]
	NVoutfile = 's11_NV_FLC_antisense.fa'
	Voutfile  = 's11_4V_FLC_antisense.fa'
	SeqIO.write(NVtranscripts, NVoutfile, 'fasta')
	SeqIO.write(Vtranscripts, Voutfile, 'fasta')
	sys.exit(0)

if __name__ == '__main__':
	main()

