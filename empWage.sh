#!/bin/bash

empRatePerHr=20;
isFullTime=1;
isPartTime=2;

totalWorkingDays=0;
totalWorkingHrs=0;

maxWorkingDays=20;
totalSalary=0;
maxWorkingHrs=100;

#TO CALCULATE TOTAL WORKING HOUR OF THE EMPLOYEE
while [[ $totalWorkingHrs -lt $maxWorkingHrs && $totalWorkingDays -le $maxWorkingDays ]]
do

	#TO CHECK EMPLOYEE IS PART OR NOT
	((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   case $empCheck in
      $isFullTime) empHrs=8
                  ;;
      $isPartTime) empHrs=4
                  ;;
               *) empHrs=0
                  ;;
   esac
   totalWorkingHrs=$(($totalWorkingHrs+$empHrs));
done
echo "Total working hours of the employee is" $totalWorkingHrs;

#CALCULATE TOTAL SALARY WITH TOTAL WORKING HOUR
totalSalary=$(($totalWorkingHrs*$empRatePerHr));
echo "Total salary of the employee is" $totalSalary;
