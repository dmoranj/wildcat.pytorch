#!/usr/bin/env bash

# Check the correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Please specify the NVIDIA Device number"
    exit 1
fi

docker run --runtime=nvidia -it -e NVIDIA_VISIBLE_DEVICES=$1 --rm wildcat
