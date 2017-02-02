#!/bin/bash
#Michael Rahn

if (( $# != 1 ))
then
	echo "Usage: grades-awk.sh filename"
	exit 1
fi

awk '{print int(($4+$5+$6)/3) " [" $1 "]" " " $3 ", " $2 }' $1 | sort -t ' ' -k 3,3 -k 2,2 -k 1,1