#!/bin/bash
# Assignment 1 question 1.
# The script resturns the name of the newest file
# from the documents given in the input
# Save as newer.sh
documents=$(ls -t $* |head -n 1)
echo "The newest file in the list is $documents"
