#!/bin/bash

empRatePerHr=20;
isFullTime=1;
isPartTime=2;
maxWorkingDays=20;
totalSalary=0;

# for loop for 20 days salary calculation
for (( days=1; days<=$maxWorkingDays; days++))
do

	#check fulltime or part time
   empCheck=$((RANDOM%3))
   case $empCheck in
      $isFullTime) empHrs=8
                  ;;
      $isPartTime) empHrs=4
                  ;;
               *) empHrs=0
                  ;;
   esac

   salary=$(($empRatePerHr*$empHrs))
   totalSalary=$(($totalSalary+$salary))
done

echo $totalSalary;
