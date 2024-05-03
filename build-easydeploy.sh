#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-?" ] || [ "$1" == "-h" ]; then
    echo "Usage: $0 [image]"
    exit 0
fi

if [ -z "$1" ]; then
    echo "ERR: no image provided"
    echo "Usage: $0 [image]"
    exit 0
else
    echo "Building $1 image..."
    sudo docker build -t "easydeploy-$1:latest" easydeploy/"$1"
fi
