#!/bin/bash
echo "Enter the date in word format."
read date
date -d "$date" > /dev/null 2>&1
if [ $? -ne 0 ]
then
	echo "Please enter a valid date"
	exit 0
fi
echo "What format do you like, MM/DD/YYYY or DD-MM-YYYY?"
read format
if [ "$format" == "DD-MM-YYYY" ]
then
	ans=`date -d "$date" +%d-%m-%Y`
	echo $ans
else
	ans=`date -d "$date" +%m/%d/%Y`
	echo $ans
fi


