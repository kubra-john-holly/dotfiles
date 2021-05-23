#!/bin/sh

if [ "$#" -ne 2 ]; then
	    echo "USAGE: ./delete-secret.sh <user> <variable>"
		exit 1
fi

security find-generic-password -a $1 -s $2 -w
