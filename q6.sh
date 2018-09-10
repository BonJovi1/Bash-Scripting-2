#!/bin/bash
echo "Enter a list that is to be flattened."
read string
temp=`echo ${string//(}`
echo "(${temp//)})"

