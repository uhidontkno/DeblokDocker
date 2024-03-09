#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-?" ] || [ "$1" == "-h" ] || [ -z $1 ]; then
    echo "Usage: $0 image"
fi

if [ -z $2 ]; then
    PORT=3000
else
    PORT=$2
fi

sudo docker run --name $1 -p $PORT:6080 deblok-$1
