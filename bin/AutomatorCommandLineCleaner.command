#!/bin/bash
#
# Automator has this bug where it send the command-line to a step that runs as
# a script twice. Clean it by sorting the files and then checking for
# unique command-line options
#

APP_NAME=`basename $0`
USAGE="Usage: $APP_NAME cleanerfile file1 file2 file3 ... fileN"

if [ "$#" -lt 2 ]; then
	echo "$USAGE"
	exit 1
fi

# Get the Sorted file name as the first parameter 
SORTED_FILE="$1"
# shift the command-line parameters so $@ is just the files
shift

# The unsorted file is the temporary file that is used to sort the items into
# the sorted file
UNSORTED_FILE="/tmp/$RANDOM.txt"

rm -f "$SORTED_FILE"
rm -f "$UNSORTED_FILE"

# Clean up the command-line 
for file in "$@"
do
	echo "$file" >> $UNSORTED_FILE
done

sort $UNSORTED_FILE | uniq > $SORTED_FILE

rm -f "$UNSORTED_FILE""
