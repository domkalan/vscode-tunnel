#!/bin/bash

IMAGE_NAME="domkalan/vscode-tunnel"

docker build -t $IMAGE_NAME

read -p "Press Enter to continue..."
