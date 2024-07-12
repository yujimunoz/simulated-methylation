#! /bin/bash
READS_LOCATION="/home/marguelles/Yuji/Scripts/"
#This sets the path of the read
count=0
array=($(ls *.fastq))
#This converts all listed files in the location of the reads into an array
len=${#array[@]}
#This gets the length the array containing all files
#echo $array
#echo $len
while [ $len -gt $count ];
do
        read_1="$READS_LOCATION${array[$count]}"
#This sets read_1 as the first file in the directory
        read_2="$READS_LOCATION${array[$count+1]}"
#This sets read_2 as the file in the directory after read_1
        /home/marguelles/Software/TrimGalore-0.6.10/trim_galore \
        --paired \
        --clip_R1 10 --clip_R2 15 \
        --three_prime_clip_R1 10 \
        --three_prime_clip_R2 10 \
        $read_1 $read_2
        # ~/Software/FastQC/fastqc $read_1 $read_2
#This passes the pair of reads as arguments to fastqc
        count=$(($count+2))
#This increments the counter by 2 such that the next iteration of the loop 
