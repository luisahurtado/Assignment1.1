#!/bin/bash
# Assignment 1 question 2
# Returns a certain message if any argument is included
# Saves as test_me.sh
if [ -z $1 ]; then
	echo "This is NOT a test"
else 
	echo "This is a test"
fi
