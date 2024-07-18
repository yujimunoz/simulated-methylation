#! /bin/bash
READS_LOCATION="/home/marguelles/Yuji/Simulated_Reads/Hualiensis_Sim_Reads/"
#This sets the path of the read
count=0
array=($(ls *.bam))
#This converts all listed bam files in the location of the reads into an array
len=${#array[@]}
#This gets the length the array containing all files
while [ $len -gt $count ];
do
        bam="$READS_LOCATION${array[$count]}"
	#echo $bam
	/home/marguelles/Software/Bismark-0.22.3/bismark_methylation_extractor --comprehensive --bedGraph --cytosine_report --genome_folder /home/marguelles/Yuji/Genomes/S_tawilis/ncbi_dataset/data/GCA_030264315.1 $bam
#This passes the pair of reads as arguments to Bismark
        count=$(($count+1))
done
