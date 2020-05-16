#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalworkingDays=0;

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
          $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalworkingDays++))
   empCheck=$((RANDOM%3));
   empHrs="$( getWorkHrs $empCheck )"
   totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$EMP_RATE_PER_HR));
echo ${dailyWage[@]}
