#!/bin/bash
#Theodore Nesham
#Purpose: will determine if a person has passed a class.

USAGEMESSAGE="To use this script enter: [ First Name ] [ Last Name ] Test1[ 0 - 100 ] ... TestN[ 0 - 100 ]"
if [[ ! $# -ge 3 ]];  then	#Check that the correct number of arguments were given.
        echo $USAGEMESSAGE
        exit 1
fi	

name="$1 $2"				#Set the name to the first two arguments.
shift; shift				#shift twice because the first two args will no longer be used.
declare -i grade=0			#Declare the grade variable as an integer.
declare -i average=0

for i in $@;				#Loop over all of the existing arguments
do			
	i=${i/.*}			#convert i to an integer.
	grade=$(($grade + $i))
done

average=$(($grade / $(($#))))	#Set the average to the grade divided by the number of arguments.

if [[ $average -lt 70 ]]; then
	echo "Sorry $name but you will have to retake the class!"
elif [[ true ]]; then
	echo "Congratulations $name, you passed with an average of: $average!"
fi
