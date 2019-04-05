#!/bin/bash
#Theodore Nesham
#Purpose: To output some data to the screen using our in class knowledge.

FILE=$1
DIRECTORY=(~/*$2)
USAGE="usage $0 [ FILE ] [ Directory of File ]"
echo""
echo "The Name of the script is: $0 "						#Name of the script.
echo -n "The current date and time is: "; date					#Outputs the current date and time.
if [[ $# -ne 2 ]]; then								#Check the number of paramaters.
	echo $USAGE; 								#usage message for if no arguments are given.
	exit 1
fi

echo "The Name of the file is: $FILE"						#Output the name of the required file.
echo "The name of the user is: $USER"						#Output the userid
echo "The name of the current working directory is: $(pwd)"			#outputs the current working directory.
echo "The name of the Unix machine is: $(hostname)"				#will echo the unix machine name.
echo "The name of the login shell is $SHELL"					#Name of the login shell

if [[ -e $FILE ]]; then								#check if the file exists.
	echo -e " $(cat $FILE) \nNUMBER OF LINES: $(cat $FILE | wc -l)";
elif [[ ! -e $FILE ]]; then							#exit if if it does not exist.
	echo -e "INCORRECT FILE NAME \n$USAGE";
	exit 1
fi
 
if [[ -d $DIRECTORY ]]; then							#check if the directory exists.
	echo -e "\nTHE LISTING OF THE REQUIRED DIRECTORY IS: "; ls $DIRECTORY;
elif [[ ! -d $DIRECTORY ]]; then						#will exit if not found.
	echo -e "NO SUCH DIRECTORY AS: $DIRECTORY \n$USAGE";
	exit 1
fi
echo "NUMBER OF PARAMETERS: $#"							#The number of paramaters given.
echo -e "CALENDER FOR OCTOBER 2019:\n$(cal 10 2019)"				#Output the calender
echo "DISK USAGE IS $(du -b) bytes"						#Disk usage in bytes.
echo "THE NUMBER OF USERS ON $(hostname) IS: $(who | wc -l)"			#Number of users.
