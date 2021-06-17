#!/bin/bash

NETWORK=''

if [ ! -z "$1" ]
then
  NETWORK="--network=$1"
fi

docker build -t ml-lodlive .
docker stop ml-lodlive
docker rm ml-lodlive
docker run --name ml-lodlive $NETWORK -p 8888:80 ml-lodlive
