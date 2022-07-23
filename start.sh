#!/bin/bash

args="$@"

file=/data/MyTrello.json
if [ -f $file ]; then
    echo "Found MyTrello.json, trying to open"
    args="$args -p 3000 -H 0.0.0.0"
    args="$args MyTrello.json"
fi

json-server $args