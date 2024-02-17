#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-?" ] || [ "$1" == "-h" ]; then
    echo "Usage: $0 [image]"
    echo "If no image is provided, it will build all images."
    exit 0
fi

if [ -z "$1" ]; then
    echo "Building all images..."
    sudo docker build -t deblok-debian-base:latest ./debian-base
    sudo docker build -t deblok-ubuntu-base:latest ./ubuntu-base
    sudo docker build -t deblok-fedora-base:latest ./fedora-base
    sudo docker build -t deblok-alpine-base:latest ./alpine-base
else
    echo "Building $1 image..."
    sudo docker build -t "deblok-$1:latest" ./"$1"
fi
