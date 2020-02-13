#!bin/bash
echo   "================================================"
echo   "welcome To the Employee Wage Computation Program"
echo   "================================================"
attendanceResult=0
attendanceCheck()
{
	if(($((RANDOM%2==0))))
    	then
		attendanceResult=0
		echo "Employee is absent today"
	else
		attendanceResult=1
		echo "Employee is present today"
	fi
}
attendanceCheck

fullTimeHour=8
wagePerHour=20
#calculate the daily wage per hour for full time employee employee
fullTimeEmployeeWage()
{
	echo "Full time Wage for employee is:$((fullTimeHour*wagePerHour)) per day"
}
fullTimeEmployeeWage

partTimeHour=4
wagePerHours=20
#calculate the daily wage per hour for full time employee employee
partTimeEmployeeWage()
{
	echo "Full time Wage for employee is:$((partTimeHour*wagePerHours)) per day"
}
partTimeEmployeeWage
echo -e "Please select the options:\n1.Full time\n2.PartTime"
read jobType

case $jobType in
        1)
		echo "Full time"
		fullTimeEmployeeWage
		;;
	2)
		echo "Part Time"
		partTimeEmployeeWage
		;;
	*)
		echo "Please enter the valid input"
		;;
	esac
	
