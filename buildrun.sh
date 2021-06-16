#!/bin/bash

docker build -t ml-lodlive .
docker stop ml-lodlive
docker rm ml-lodlive
docker run --name ml-lodlive -p 8888:80 ml-lodlive
