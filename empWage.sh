#!/bin/bash

empRatePerHr=20;
isFullTime=1;
isPartTime=2;

totalWorkingDays=0;
totalWorkingHrs=0;

maxWorkingDays=20;
totalSalary=0;
maxWorkingHrs=100;

# FUNCTION TO RETURN WORKING HOURS OF EMPLOYEE
function getWorkingHrs(){
   case $1 in
      $isFullTime) empHrs=8
                  ;;
      $isPartTime) empHrs=4
                  ;;
               *) empHrs=0
                  ;;
   esac
   echo $empHrs; #RETURN
}

#CALCULATION OF TOTAL WORKING HOURS THROUGH FUNCTION CALL
while [[ $totalWorkingHrs -lt $maxWorkingHrs && $totalWorkingDays -le $maxWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs=$(getWorkingHrs $empCheck) #FUNCTION CALL
	totalWorkingHrs=$(($totalWorkingHrs+$empHrs))
done
echo "Total Working Hours of the employee is" $totalWorkingHrs;
