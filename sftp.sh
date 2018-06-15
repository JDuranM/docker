#!/bin/bash
VOLUME=/Users/$USER/.docker

IMAGE=atmoz/sftp
CONTAINER=$USER-sftp
PORT=22
USER=sftp
PASSWORD=sftp

docker rm -f $CONTAINER
docker run --name $CONTAINER -v $VOLUME/$CONTAINER/upload:/home/$USER/upload -p $PORT:22 -d $IMAGE $USER:$PASSWORD:::upload