#!/bin/bash
url1=$1
url2=$2
echo $url1 > q15_url.txt
echo $url2 >> q15_url.txt
file=$3

wget -O first.html $url1

sed -e 's/<[^>]*>//g' first.html > stripped1.txt
cat stripped1.txt | xargs -n 1 | sort -n | uniq -c | sort -nr | awk '{print $2 " " $1}' | sort -k2,2rn -k1 > q15_ans.txt

echo "Second URL: ">> q15_ans.txt

wget -O second.html $url2

sed -e 's/<[^>]*>//g' second.html > stripped2.txt
cat stripped2.txt | xargs -n 1 | sort -n | uniq -c | sort -nr | awk '{print $2 " " $1}' | sort -k2,2rn -k1 >> q15_ans.txt

cat q15_ans.txt


	



