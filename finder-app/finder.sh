#!/bin/bash

FILESDIR=$1
SEARCHSTR=$2

if [ -z $FILESDIR ] || [ -z $SEARCHSTR ]
then
        echo "ERROR: Need 2 parameters"
        exit 1
fi

if  [ -d $FILESDIR ]
then
        NUMFILES=$(find $FILESDIR -type f -print | wc -l)
        NUMMATCH=$(grep -r "${SEARCHSTR}" $FILESDIR | wc -l)
        echo "The number of files are ${NUMFILES}  and the number of matching lines are ${NUMMATCH}"

else
    echo "ERROR: Not a directory."
    exit 1
fi

