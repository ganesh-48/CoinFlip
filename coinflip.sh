#!/bin/bash -x

echo "Welcome Flip Coin Simulation"

isCoinFlip=1;
randomCheck=$((RANDOM%2))

if [ $isCoinFlip -eq $randomCheck ]
then
	echo "Heads"
else
	echo "Tails"
fi


Head=0;
Tail=1;


for (( i=0; i<3; i++ ))
do
	randomCheck=$((RANDOM%2));

	if [ $randomCheck -eq 0 ]
	then
		echo "Head"
		Head=$(( $Head + 1 ))
		count=$(( $count + 1 ))
	elif [ $randomCheck -eq 1 ]
	then
		echo "Tail"
		Tail=$(( $Tail + 1 ))
		count=$(( $count + 1 ))
	fi

done

 echo "Head=$Head"
 echo "Tail=$Tail"
