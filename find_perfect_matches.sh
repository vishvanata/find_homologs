#!/bin/bash
queryfile=$1
subjectfile=$2
outfile=$3
blastn -query $queryfile -subject $subjectfile -perc_identity 100 -outfmt 6 -out $outfile
echo $(cat $outfile | wc -l)

