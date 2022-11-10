# !/bin/bash

file="$1"
conteudo=$(<"$1")

# Visualizar o arquivo GFF  pelo terminal

echo "Visualizando o arquivo completo"
sleep 1s
zcat $1

# Visualizar as últimas 20 linhas do arquivo 
echo "Visualizando as últimas 20 linhas do arquivo"
sleep 1s
zcat $1 | tail -20

# Use o programa awk para mostrar os diferentes produtos gênicos (features) que o genoma possui e salve a contagem de cada tipo de produto gênico presente no genoma em um arquivo de texto genomic_features.txt 

echo "Salvando produtos gênicos (features) no arquivo genomic_features.txt"
sleep 1s
zcat $1 | grep -v "^#" | cut -f 3 | sort | uniq -c >> genomic_features.txt

# Utilizando o awk filtre apenas os “exons” e salve o resultado em um arquivo de texto exons.txt 

echo "Salvando os exons no arquivo de texto exons.txt"
sleep 1s
zcat $1 | awk '{if ($3=="exon") print}' >> exons.txt
