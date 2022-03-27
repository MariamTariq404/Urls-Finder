
figlet U R Ls F I N D E R 

echo "[+]---------------------------------"
"Enter the Domain name i.e \"example.com"\"
echo "[+]---------------------------------"
read name

#Fetch all urls using gau and saving into a file with the name of domain


printf $name | ./gau >> $name.txt

./waybackurls $name >> wayback_$name.txt 

sort -u $name.txt wayback_$name.txt >> final_$name.txt



