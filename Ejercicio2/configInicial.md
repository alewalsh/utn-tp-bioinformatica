#! /usr/bin/sh -l

# Correr desde el root del proyecto

# Download swissprot db in fasta format
wget https://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz \n
gzip -d "/swissprot.gz"

#Execute exercise
perl Ex2.pm

