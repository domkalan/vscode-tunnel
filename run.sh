#!/bin/bash

IMAGE_NAME="domkalan/vscode-tunnel"
INSTANCE_NAME="domkalan/vscode-tunnel"

# Try to start the container with the given name; if it doesn't exist, run a new one.
docker start $INSTANCE_NAME 2>/dev/null || docker run \
    --detach \
    --volume $INSTANCE_NAME:/home/workspace \
    --workdir /home/workspace \
    --name $INSTANCE_NAME \
    $IMAGE_NAME:latest