#!/bin/bash
# Modification of the original code
# First, gives a time signal every hour when connected to cron
# Then, a pause of 3 seconds and chimes accordingly to the minutes of the date
time=$(date +%I)
minutes=$(date +%M)
count=0
while [ $count -lt $time ]; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done
sleep 3
if [ $minutes -lt 30 ] && [ $minutes -ge 15 ]; then
	echo -e "\a"
   elif [ $minutes -lt 45 ] && [ $minutes -ge 30 ]; then
	echo -e "\a"
	sleep 1
	echo -e "\a"
   elif [ $minutes -ge 59 ] && [ $minutes -le 45 ]; then
	echo -e "\a"
	sleep 1
	echo -e "\a"
	sleep 1
	echo -e "\a"
fi
