#!/bin/bash

echo "<html>" > q14.html 
echo "<head>" >> q14.html
echo "<title>"  >> q14.html
echo "bon jovi"  >> q14.html
echo "</title>"  >> q14.html
echo "</head>"  >> q14.html
echo "<body>"  >> q14.html
echo "<table width="30%" align="center">"  >> q14.html
echo "<tr> <td colspan="3" align="center"> $HOME </td> </tr>"  >> q14.html
echo "<tr> <td> <b> Name </td> <td> <b> Size </td> <td> <b>File/Dir </td> </tr>" >> q14.html
allfiles=`ls ~`
ctr=1
for i in $allfiles 
do
	ctr=$((ctr+1))
	size=`ls -lh ~|awk '{print$5}'| awk "(NR == $ctr)"` 
	if [ -d $i ]
	then
		type="Dir"
	else
		type="File"
	fi
	echo "$type $i"
	echo "<tr> <td> $i </td> <td> $size </td> <td> $type </td> </tr>" >> q14.html
done


echo "</body>"  >> q14.html
echo "</html>"  >> q14.html


