#!/bin/bash
echo "Enter a string to check whether it is a palindrome. "
read string
string=`echo $string | tr [:upper:] [:lower:]`
reverse=`echo $string | rev`
echo Reverse is: $reverse
if [ "$string" == "$reverse" ]
then
	echo "Oh yay! It's a palindrome! "
else
	echo "Oh no, this is not a palindrome."
fi


