#!/bin/bash

t=$(cat $1|tr '\n' ' '| tr '=' ' ')

#echo $t

IFS='.?!'
read -ra sentences <<< "$t"

echo $sentences

for sentence in "${sentences[@]}"
 do
	echo "$sentence".
	echo

	#speak-ng -v de -s 399 "$sentence"
	echo "$sentence" |espeak-ng -v $2 -s $3

	#sleep 1
	
done
