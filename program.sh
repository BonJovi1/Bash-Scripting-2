#!/bin/bash
echo "Welcome to the Database!"
n=$#
if [ "$1" == "write" ]
then
	eno=$2
	ename=$3
	esalary=$4
	echo $eno:$ename:$esalary >> employee.txt
	echo Done!
elif [ "$1" == "update" ]
then
	ctr=0
	eno=$2
        ename=$3
        esalary=$4
	cat employee.txt|while read line
			do
				number=`echo $line|cut -d ':' -f1`
				ctr=$((ctr+1))
				if [ $number -eq $eno ]
				then
					sed -i "$ctr s/.*/$eno:$ename:$esalary/" employee.txt
				fi
			done 
	echo "DONE!"

elif [ "$1" == "read" ] 
then
	ctr=0
	eno=$2
	cat employee.txt|while read line
			do
				number=`echo $line|cut -d ':' -f1`
				ctr=$((ctr+1))
				if [ $number -eq $eno ]
				then 
					echo $line
				fi
			done
elif [ "$1" == "delete" ]
then
	ctr=0
	eno=$2
	cat employee.txt|while read line
                        do
                                number=`echo $line|cut -d ':' -f1`
                                ctr=$((ctr+1))
                                if [ $number -eq $eno ]
                                then
                                        sed -i "$ctr d" employee.txt
					ctr=$((ctr-1))
                                fi
                        done
	echo "DONE!"
elif [ "$1" == "duplicate" ]
then
	cat employee.txt | sort -n | uniq -d
elif [ "$1" == "nthsalary" ]
then
	pos=$2
	salary=`cat employee.txt | cut -d ":" -f3 | sort -rn | uniq | awk "NR==$pos"`
	cat employee.txt|while read line
                        do
                                temp=`echo $line|cut -d ":" -f3`
               
                                if [ $temp -eq $salary ]
                                then
                                        echo $line
                                fi
                        done
fi

	







