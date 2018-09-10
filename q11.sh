#!/bin/bash
echo "Operation type: "
read operation
echo "How many numbers do you want to enter?"
read n;
echo "Enter $n numbers"
read number;
ans=$number;
for ((i=1;i<n;i++))
do
	read number;
	ans=$(echo "scale=4; $ans$operation$number" | bc)
done
echo "Answer: $ans"

