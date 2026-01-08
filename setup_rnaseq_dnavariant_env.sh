#!/bin/bash

echo "========================================"
echo " RNA-seq + DNA Variant Calling Setup"
echo "========================================"

# Step 1: Configure conda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict

# Step 2: Create conda environment
conda create -y -n ngs_practical_env \
    python=3.10 \
    wget \
    fastqc \
    trimmomatic \
    star \
    subread \
    samtools \
    bwa \
    bcftools \
    vcftools \
    freebayes \
    r-base=4.3 \
    r-essentials \
    bioconductor-maftools

# Step 3: Activate environment
echo "Activate environment using:"
echo "conda activate ngs_practical_env"

echo "========================================"
echo " Installation completed successfully"
echo "========================================"


which wget
fastqc --version
trimmomatic -version
STAR --version
featureCounts -v
bwa
samtools --version
bcftools --version
freebayes --version
R --version
