

for i in *.fasta;do
blastn -query $i -db database.fasta -word_size 11 -dust no -out $i.results.txt
done


