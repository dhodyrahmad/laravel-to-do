#!/bin/bash

########################################################

## Shell Script to Build Docker Image   

########################################################

IMAGE=dhodyrhmd/laravel-apache
TAG=v1
DIR=laravel-project

echo "building image..."
sleep 5
docker build . -t $IMAGE:$TAG
docker image ls
echo "Done, your image will be $IMAGE:$TAG"
