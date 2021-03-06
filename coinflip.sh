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
