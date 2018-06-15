#!/bin/bash
#script to find a string in your current working directory
cwd=`pwd`
echo "Enter the string you want to search"
read word
#echo $cwd
#echo $word
find "$cwd" -type f -exec grep -H "$word" {} +
