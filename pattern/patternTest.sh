#!/bin/bash -x

#pattern matching using REGEX

shopt -s extglob   #turn on extended globbing
echo "Enter word ending with thing"
read word
if [[ $word == +(some|any)thing ]];
	then
		echo yes;
	else
		echo no;
fi
