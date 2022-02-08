#!/bin/bash -x

isPresent=1;
empRatePerHr=20;
isFullTime=8;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ];
then
	salary=$(($empRatePerHr * $isFullTime))
else 
	salary=0;
fi
echo $salary
