#!/bin/sh

DBPASS='kittens'
TOKEN='[git:9af74347c5a740a9614d7f202718c128]'
SETUP='/usr/local/sbin/setup_vendor'

if ! [ -x $SETUP ]; then
        echo "$SETUP not found" >&2
        exit
fi

$SETUP --db 127.0.0.1:5432 --pass $DBPASS --token $TOKEN
