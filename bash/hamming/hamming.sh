#!/usr/bin/env bash

x=$1
y=$2

# for ((a=0; a<${#x}; a++)); do
#   for ((b=0; b<${#y}; b++)); do
#     echo "${x:$a:1}";
#     echo "${x:$b:1}";
#     echo;
#   done
# done

counter=0

# for ((a=0,b=0; a<${#x}, b<${#y}; a++,b++)); do
# echo -n "${x:$a:1}";
# echo "${y:$b:1}";
# echo;
# done

for ((a=0,b=0; a<${#x}, b<${#y}; a++,b++)); do
  if [ "${x:$a:1}" != "${y:$b:1}" ]; then
    counter=$((counter + 1))
  fi 
  done

echo $counter
