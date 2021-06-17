#!/bin/bash

NETWORK=''

if [ ! -z "$1" ]
then
  NETWORK="--network=$1"
fi

echo docker build -t ml-lodlive .
echo docker stop ml-lodlive
echo docker rm ml-lodlive
echo docker run --name ml-lodlive $NETWORK -p 8888:80 ml-lodlive
