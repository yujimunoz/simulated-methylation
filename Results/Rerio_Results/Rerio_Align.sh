#! /bin/bash
SIMREADS_LOCATION="/home/marguelles/Yuji/Simulated_Reads/All_Sim_Reads/"
count=0
array=($(ls *.fastq))
#This converts all listed files in the location of the reads into an array
len=${#array[@]}
#This gets the length the array containing all files
while [ $len -gt $count ];
do
        read_1="$SIMREADS_LOCATION${array[$count]}"
#This sets read_1 as the first file in the directory
        read_2="$SIMREADS_LOCATION${array[$count+1]}"
#This sets read_2 as the file in the directory after read_1
	/home/marguelles/Software/Bismark-0.22.3/bismark /home/marguelles/Yuji/Genomes/D_rerio/ncbi_dataset/data/GCF_000002035.6 --path_to_bowtie2 /home/marguelles/Software/bowtie2-2.5.1-linux-x86_64 -1 $read_1 -2 $read_2
#This passes the pair of reads as arguments to bowtie2
        count=$(($count+2))
done
