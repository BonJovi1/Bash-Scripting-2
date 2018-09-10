#!/bin/bash
cron=$1
crontab $cron > /dev/null 2>&1
if [ $? -ne 0 ]
then
	echo "Crontab is Not properly formatted :("
else
	echo "It's properly formatted, should work! :)"
fi

