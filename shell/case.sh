#!/bin/bash 
for filename in $(ls)
do
   ext=${filename##*\.} #<-- Take extension in a filename
   case "$ext" in
	java)   echo "$filename : java source file"
		;;
	o)      echo "$filename : object file"	
		;;
	sh)     echo "$filename : shell script file"
		;;
	txt)    echo "$filename : text file"
		;;
	*)      echo "$filename : not processed"
		;;
   esac
done	 
