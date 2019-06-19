#!/usr/bin/env bash

# Check the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Please specify the NVIDIA Device number and the absoute path to the target folder"
    exit 1
fi

BATCH=16
EPOCHS=20

cd ..
docker run --ipc=host --runtime=nvidia -d -e NVIDIA_VISIBLE_DEVICES=$1 -e BATCH=$BATCH -e EPOCHS=$EPOCHS --mount type=bind,source=$2,target=/data --rm wildcat_dmoranj
