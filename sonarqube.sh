#!/bin/bash
IMAGE=sonarqube
CONTAINER=$USER-sonarqube
PORT=9000

docker rm -f $CONTAINER
docker run --name $CONTAINER -p $PORT:9000 -d $IMAGE