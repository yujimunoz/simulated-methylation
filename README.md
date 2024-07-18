# Simulated Methylation
## Project Description
This project is a bioinformatics pipeline for methylation analysis of simulated *Sardinella tawilis* sequences against the *Danio rerio*, *S. hualiensis*, and *S. tawilis* reference genomes. Tools used were FastQC for quality control, Trim Galore for trimming, and Bismark for methylation calling and extraction. 
## Repository structure
```
simulated-methylation/
├── Results/ -> Bismark BAM files and graphical reports
│   ├── Hualiensis_Results
│   ├── Rerio_Results
│   └── Tawilis_Results
├── Scripts/
│   ├── Sherman_Tawilis.sh -> read simulation
│   ├── accession.txt -> real data
│   ├── fastqc.sh -> quality control
│   ├── sra-toolkit.sh -> SRA prefetch and fasterq-dump
│   └── trim.sh -> trimming
├── Simulated-Reads/ -> simulated Tawilis sequences
│   ├── simulated_1
│   ├── simulated_2
│   ├── simulated_3
│   ├── simulated_4
│   └── simulated_5
└── README.md
```
## References
SRA Toolkit: https://github.com/ncbi/sra-tools  
FastQC: https://www.bioinformatics.babraham.ac.uk/projects/fastqc/  
TrimGalore: https://github.com/FelixKrueger/TrimGalore  
Sherman: https://github.com/FelixKrueger/Sherman/  
Bismark: https://github.com/FelixKrueger/Bismark/