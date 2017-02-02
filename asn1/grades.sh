#!/bin/bash
#Michael Rahn

# note this script must be ran on a text file terminating with a \n

if (( $# != 1 ))
then
	echo "Usage: grades.sh filename"
	exit 1
fi

while IFS= read -r line; do
	IFSl=' ' read -ra LN <<< "$line"
	echo $(((${LN[3]}+${LN[4]}+${LN[5]}) / 3)) [${LN[0]}] ${LN[2]}, ${LN[1]}
done <$1 | sort -t ' ' -k 3,3 -k 2,2 -k 1,1