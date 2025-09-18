#!/bin/bash

input="$*"
length=${#input}
resultNum=0
resultLetter=0
resultSymbols=0

for ((i=0; i<length; i++)); do
	char="${input:i:1}"

	if [[ "$char" == " " ]]; then
        	continue
        fi

	if [[ $char =~ [0-9] ]]; then
		(( resultNum+=1 ))
	elif [[ $char =~ [a-zA-Z] ]]; then
                (( resultLetter+=1 ))
	else
		(( resultSymbol+=1 ))
	fi
done


echo Numbers: "${resultNum}" Symbols: "${resultSymbol}" Letters: "${resultLetter}"

