#!/bin/bash

IMAGE_NAME="domkalan/vscode-tunnel"

cd Dockerfiles/standalone

docker build -t $IMAGE_NAME

read -p "Press Enter to continue..."
