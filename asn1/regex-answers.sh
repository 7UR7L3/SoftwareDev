#!/bin/bash
#Michael Rahn

if (( $# != 1 ))
then
	echo "Usage: regex-answers.sh filename"
	exit 1
fi

grep -cE '[0-9]$' $1
grep -cE '^[^aeiouAEIOU]' $1
grep -cE '^[a-zA-Z]{12}$' $1
grep -cE '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' $1
grep -cE '^303-441-[0-9]{4}$' $1
grep -cE '^[aeiouAEIOU].*[0-9]$' $1
grep -cE '\w+@geocities\.com$' $1
grep -E '@' $1 | grep -cvE '[a-zA-Z0-9\.\-]+@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9\.\-]+'