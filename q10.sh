#!/bin/bash
n=$#;
expo=$(($1**$2))

for((i=2;i<n;i++))
do
	expo=$((expo**$3))
	shift
done
echo "Exponential value = $expo"


