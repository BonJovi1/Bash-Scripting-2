#!/bin/bash
file1=$1
file2=$2
cat $file1 $file2 > file3.txt
n=$#
for ((j=3 ;j<=$n ;j++))
do
	string="$string -k$3,$3"
	shift
done

cat file3.txt | sort -n `echo $string`



