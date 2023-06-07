
echo "Write your multiple fasta files: "
read a
echo "alignment only press 1 "
echo "tree press 2 " 
echo "both press 3"
read b
if [[ $b = 1 ]]
then
	muscle -in $a -out $a.afa
elif [[ $b == 2 ]]
then
	muscle -in $a -out $a.tree.html -html -tree1 $a.tree.phy^C

else 
	muscle -in $a -out $a.tree.html -html -tree1 $a.tree.phy^C
	muscle -in $a -out $a.afa
fi


