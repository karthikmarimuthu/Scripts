#!/bin/bash
cwd=`pwd`
echo "Enter the string you want to search"
read word
echo "Enter the filename to search or hit enter to search in current directory"
read file
newfile=$file
if [[ -z "$file" ]]; then
	grep -r "$word"
else
#	find . -type f -name "$file" -print0 | xargs -I {} -0 grep -l "$word" "{}"
	grep -r "$word" $newfile
fi
