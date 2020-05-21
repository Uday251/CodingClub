#!/bin/bash -x

echo "Enter email Address"
read email
emailPat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"
if [[ $email =~ $emailPat ]];
	then
		echo yes;
	else
		echo no;
fi
