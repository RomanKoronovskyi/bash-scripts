#!/bin/bash

input="$*"
length=${#input}
result=""

for ((i=length-1; i>=0; i--)); do
	char="${input:i:1}"

	if [[ $char =~ [a-z] ]]; then
		char=${char^^}
	elif [[ $char =~ [A-Z] ]]; then
		char=${char,,}
	fi

	result+=$char
done

echo $result




