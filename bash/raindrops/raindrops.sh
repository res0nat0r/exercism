#!/usr/bin/env bash

# has 3 as a factor, add 'Pling' to the result.
# has 5 as a factor, add 'Plang' to the result.
# has 7 as a factor, add 'Plong' to the result.
# does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.

((pling = $1 % 3))
((plang = $1 % 5))
((plong = $1 % 7))

if [ $pling -eq 0 ]; then
	output+=Pling
fi
if [ $plang -eq 0 ]; then
	output+=Plang
fi
if [ $plong -eq 0 ]; then
	output+=Plong
fi

echo "${output:-$1}"
