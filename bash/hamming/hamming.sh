#!/usr/bin/env bash

counter=0
x=$1
y=$2

if [ "${#x}" != "${#y}" ]; then
	echo "strands must be of equal length"
fi

for ((a = 0, b = 0; a < ${#x}, b < ${#y}; a++, b++)); do
	if [ "${x:$a:1}" != "${y:$b:1}" ]; then
		counter=$((counter + 1))
	fi
done

echo $counter
