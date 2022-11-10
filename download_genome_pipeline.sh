# !/bin/bash


# Baixando os genomas nucleares e o genoma mitocondrial

echo "Iniciando download dos genomes nucleares e mitocondrial de Saccharomyces cerevisiae"
sleep 1s 

wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IV.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.I.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.II.fa.gz        	
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.III.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.V.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VI.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VII.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VIII.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IX.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.X.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XI.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XII.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIII.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIV.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XV.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XVI.fa.gz
wget https://ftp.ensembl.org/pub/release-108/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.Mito.fa.gz

# Fazendo unzip "manual" de cada gz
echo "Utilizando gunzip para descompactar os arquivos baixados"
sleep 1s

gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IV.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.I.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.II.fa.gz        	
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.III.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.V.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VI.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VII.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VIII.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IX.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.X.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XI.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XII.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIII.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIV.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XV.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XVI.fa.gz
gunzip Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.Mito.fa.gz

# Caso não fosse requisito utilizar o gunzip, poderiamos usar uma expressão regular com o comando unzip para extrair todos os arquivos com uma só linha

# unzip *.gz

# Concatenando todos os arquivos .fa em um .fasta

echo "Concatenando os arquivos .fa em um único só arquivo .fasta"

cat ./*.fa > Saccharomyces_cerevisiae_16.fasta 
