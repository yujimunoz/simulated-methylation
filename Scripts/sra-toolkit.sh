#! /bin/bash
~/Software/sratoolkit.3.1.1-ubuntu64/bin/prefetch --option-file $1
#This is for downloading the sequences using a .txt file.
while read sra;
do
	~/Software/sratoolkit.3.1.1-ubuntu64/bin/fasterq-dump --split-files "$sra"
 #This is for extracting the reads for each line in the .txt file.
done < $1
