#!/bin/sh

DBPASS={setup.DBPASS} #'kittens'
TOKEN={setup.TOKEN} 
SETUP='/usr/local/sbin/setup_vendor'

if ! [ -x $SETUP ]; then
        echo "$SETUP not found" >&2
        exit
fi

$SETUP --db 127.0.0.1:5432 --pass $DBPASS --token $TOKEN
