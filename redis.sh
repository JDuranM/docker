#!/bin/bash
VOLUME=/Users/$USER/.docker

IMAGE=redis:3.2-alpine
CONTAINER=$USER-redis
PORT=6379

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $VOLUME/$CONTAINER/data:/data -p $PORT:6379 -d $IMAGE