#!/bin/bash

set -e 
docker rmi project1 -f > /dev/null 2> /dev/null
docker build . -t project1 -f Dockerfile.docker-compose
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -p 8888:8888 project1