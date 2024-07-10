#! /bin/bash
~/Software/sratoolkit.3.1.1-ubuntu64/bin/prefetch --option-file $1
while read sra;
do
	~/Software/sratoolkit.3.1.1-ubuntu64/bin/fasterq-dump --split-files "$sra"
done < $1
