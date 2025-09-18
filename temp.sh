#!/bin/bash

input="$1"
num="${input%[CKck]}"
last="${input: i-1}"

if [[ "$last" == "C" || "$last" == "c" ]]; then
	(( num += 273 ))
	echo "${num}K"
elif [[ "$last" == "K" || "$last" == "k" ]]; then
	(( num -= 273 ))
	echo "${num}C"
else
	echo "error"
	exit 1
fi

	
		
