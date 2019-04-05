#!/bin/bash
# Name: Theodore Nesham
# Date: 03/09/2019
# Description: Will check for check for matching names in a HERE document.

userIn=""

while [[ true ]]; do

echo "please enter a pattern to be checked in the file: "
read userIn
echo $userIn	# read the pattern from the user.

#using grep to create or overwrite the file temp.txt which contains the match from grep.
grep $userIn > temp.txt <<  'myContactList'
someone@example.com 636-385-9923 Someone, Noone
jerryKelly@yahoo.com 636-277-2345 Kelly, Jerry
smith.Jerry@gmail.com 314-978-9911 Jerry, Smith
craig.dooley@gmail.com 215-398-0099 Dooley, Craig
santiagoflores@live.com 314-159-2653 Flores, Santiago
myContactList

if [[ ! -s temp.txt ]]; then	# If the file exists and the size is greater than 0 output a message.
	echo "The name or pattern you entered was not found... " 
elif [[ true ]]; then	#else output the contents of the match from the text file.
	echo "The contents of your match are: " 
	cat temp.txt
fi

done
