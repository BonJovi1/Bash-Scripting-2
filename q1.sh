#!/bin/bash
echo "Enter a scrambled command"
read word
flag=0
ctr=0
pos=0
temp=`echo $word | grep -o . | sort -n | tr '\n' ','`
word1=`echo ${temp//,}`

compgen -c > commands.txt
while read line
		do
			temp=`echo $line | grep -o . | sort -n | tr '\n' '!'`
			word2=`echo ${temp//!}`
			ctr=$((ctr+1))
			if [ "$word1" == "$word2" ]
			then
				flag=$((flag+1))
				echo "YES! This command is executable. "
				pos=$ctr
				break
			fi
		done <<< "$(cat commands.txt)"

if [ $flag -eq 0 ]
then
	echo "NO, this is not an executable command!"
fi

if [ $flag -eq 1 ]
then
	word=`cat commands.txt | head -n $pos | tail -n 1`
	man $word|grep -A 100000 DESCRIPTION

fi








