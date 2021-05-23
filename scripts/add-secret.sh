#!/bin/sh

if [ "$#" -ne 3 ]; then
	    echo "USAGE: ./add-secret.sh <user> <variable> <password>"
		exit 1
fi

security add-generic-password -a $1 -s $2 -w $3
