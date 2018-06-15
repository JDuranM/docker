#!/bin/bash
VOLUME=/Users/$USER/.docker

IMAGE=mysql:5.5
CONTAINER=$USER-mysql
PASSWORD=toor
PORT=3306

docker rm -f $CONTAINER
docker run --name=$CONTAINER -v $VOLUME/mysql/data/db:/var/lib/mysql -p $PORT:3306 -e MYSQL_ROOT_PASSWORD=$PASSWORD -d $IMAGE