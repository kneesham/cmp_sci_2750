#!/bin/bash
#Theodore Nesham
#The purpose of this script is to:
#1. prompt user for an integer 
#2. Find the smallest prime factor for that number.
#3. If the number has no factors than itself outputs "The number is prime"

declare -i NUMBER=0	#wil be the number the user enters.
declare -i LEAST=0	#Will be the least prime number.
declare PRIME=false	#Used to check if the number is prime or not.

echo -n "PLAESE ENTER A NUMEBR BETWEEN 10 AND 100: "; 
read NUMBER

if [[ $NUMBER -ge 10 ]] && [[ $NUMBER -le 100 ]]; then
	LEAST=$NUMBER	#assign the least prime number to the initial number 

	for ((i=$NUMBER; i >=1; i--)) do

		if [[ $(( $NUMBER % $i)) -eq 0 ]] && [[ $i -ne 1 ]] && [[ $NUMBER -ne $i ]]; then
			PRIME=true	#Set to false if the number is not one or itself.		
			LEAST=$i	#Least prime number is re-assigned.
		fi	
	done
elif [[ $NUMBER -lt 10 ]] || [[ $NUMBER -gt 100 ]]; then	#check if the numer is in the correct range
	echo "The number entered is not in the correct range."
	exit 1
fi

if [[ $PRIME ]] && [[ $LEAST -eq $NUMBER ]]; then 		#Check that prime is true and least is the same as number
	echo "The number is prime: $NUMBER"
elif [[ true ]]; then 						#Else just output the Least prime number.
	echo "The smallest prime factor is: $LEAST"
fi
