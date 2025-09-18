#!/bin/bash

input="$*"
length=${#input}
result=0

for ((i=0; i<length; i++)); do
	char="${input:i:1}"
	if [[ "$char" =~ [0-9] ]] && ((char % 2 == 0)); then
		((result+=$char))
	fi
done

echo "$result"
