#!/bin/bash 

HISTFILE=~/.bash_history
set -o history

numberofpipes=`history|grep '|' | wc -l`

history | grep -v '|' | awk '{print $2}' |sort -n | uniq -c | sort -rn | awk '{print $2 " " $1}' > hist.txt

echo "PIPE $numberofpipes" >> hist.txt

cat hist.txt | sort -rn -k2










