#!/bin/bash
CONTAINER_NAME=$1

if [ -z "$CONTAINER_NAME" ]; then
  echo "No container name provided."
  exit 1
fi

CONTAINER_ID=$(sudo docker ps -a -q -f name="$CONTAINER_NAME")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping and removing old container with name: $CONTAINER_NAME..."
  sudo docker stop "$CONTAINER_ID"
  sudo docker rm -f "$CONTAINER_ID"
else
  echo "No old container to remove."
fi
