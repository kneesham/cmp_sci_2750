#!/bin/bash
# Name: Theodore Nesham
# Date: 03/07/2019

# Description: Takes a name of a directory as
# a paramater and loops through all it's files

Dir=$1

if [[ ! -d $Dir ]] || [[ $# -ne 1 ]]; then
	echo "Usage ./listEmptyDir.sh [ file ] "
	exit 1
fi


for file in $1/*; do						#used to go over all of the files in the specified directory.

	echo "$file"						#echo out the file names

	if [[ -d $file ]]; then					#check if a file is a directory.

		echo "$file has `ls $file/ | wc -l ` files"	#output the number of files in each directory.

		isEmpty=$(ls $file/ | wc -l)			#will check how many files are in a file if it's a directory.
		
		if [[ $isEmpty -eq 0 ]]; then			#if 0 files found appends to the EmptyDir.txt.
			echo "$file" >> ./EmptyDir.txt
		fi
	fi
done
