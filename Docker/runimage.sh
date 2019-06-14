#!/usr/bin/env bash

# Check the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Please specify the NVIDIA Device number and the absoute path to the target folder"
    exit 1
fi

cd ..
docker run --runtime=nvidia -d -e NVIDIA_VISIBLE_DEVICES=$1 --mount type=bind,source=$2,target=/data --rm wildcat
