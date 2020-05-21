#!/bin/bash -x

#pattern matching using REGEX

shopt -s extglob   #turn on extended globbing
echo "Enter word ending with thing"
read word
pat=[a-zA-Z]{3}                     #pattern check for characters
pat=^[1-9]*                         #pattern check for preceede by number then characters
pat=[1-9a-zA-Z]*$                  
pat="^[1-9]*[a-zA-Z]{3}[1-9a-zA-Z]*$"           #combining both patterns and checking for valid and invalid patterns
if [[ $word =~ $pat ]];
	then
		echo yes;
	else
		echo no;
fi
