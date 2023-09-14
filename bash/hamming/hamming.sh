#!/usr/bin/env bash

counter=0
x=$1
y=$2

if [ "$#" != 2 ]; then
	echo "Usage: hamming.sh <string1> <string2>"
	exit 1
fi

if [ "${#x}" != "${#y}" ]; then
	echo "strands must be of equal length"
	exit 1
fi

for ((a = 0, b = 0; a < ${#x}, b < ${#y}; a++, b++)); do
	if [ "${x:$a:1}" != "${y:$b:1}" ]; then
		counter=$((counter + 1))
	fi
done

echo $counter
