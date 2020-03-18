#!/bin/bash
#Question 1 of the assignment 1.
#The script resturns the name of the newest file
#from the documents given as the input
#Save as newer.sh
documents=$(ls -t $* |head -n 1)
echo "The newest file in the list is $documents"
