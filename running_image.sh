#!/bin/bash

########################################################

## Shell Script to Build Docker Image   

########################################################

IMAGE=dhodyrhmd/laravel-apache
TAG=v1
DIR=helm-chart
RELEASE_NAME=laravel-webserver
PWD=$(pwd)

cd $DIR

echo "your work dir: $PWD"

echo "running helm install..."
sleep 5
helm install $RELEASE_NAME .
helm list

echo "check pod..."
sleep 5
kubectl get pods
echo "done!"
