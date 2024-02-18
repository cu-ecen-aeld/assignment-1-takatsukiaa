#!/bin/bash

WRITEFILE=$1
WRITESTR=$2
WRITEDIR=$(dirname $WRITEFILE)


if [ -z $WRITEFILE ] || [ -z $WRITESTR ]
then 
        echo "ERROR: Needs 2 parameters"
        exit 1
fi
if [ -e $WRITEFILE ]
then
        echo "${WRITESTR}" > $WRITEFILE
else
    mkdir -p $WRITEDIR 
    touch $WRITEFILE
    echo "${WRITESTR}" > $WRITEFILE
fi

