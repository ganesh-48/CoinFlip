#!/bin/bash -x

echo "Welcome Flip Coin Simulation"

isCoinFlip=1;
randomCheck=$((RANDOM%2));

if [ $isCoinFlip -eq $randomCheck ]
then
	echo "Heads"
else
	echo "Tails"
fi


Head=0;
Tail=1;


for (( i=0; i<100; i++ ))
do
	randomCheck=$((RANDOM%2));

	if [ $randomCheck -eq 0 ]
	then
		echo "Head"
		Head=$(( $Head + 1 ))
		count=$(( $count + 1 ))
			if [ $Head -eq 21 ]
			then
				break
			fi
	elif [ $randomCheck -eq 1 ]
	then
		echo "Tail"
		Tail=$(( $Tail + 1 ))
		count=$(( $count + 1 ))
			if [ $Tail -eq 21 ]
			then
				break
			fi
	fi
done
 echo "Head=$Head"
 echo "Tail=$Tail"

if [ $Head -eq $Tail ]
then
	echo " It's Tie "

elif [ $Head -gt $Tail ]
then
	Head=$(( $Head - $Tail ))
	echo " Head is Win by: $Head "

elif [ $Tail -gt $Head ]
then
	Tail=$(( $Tail - $Head ))
	echo " Tail is Win by: $Tail "

fi

