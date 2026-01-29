#!/bin/sh -l
 
IMAGE_NAME=$1
TAG=$2
 
echo "Building Docker image: $IMAGE_NAME:$TAG"
docker build -t $IMAGE_NAME:$TAG .
 
echo "Logging into Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
 
echo "Pushing Docker image: $IMAGE_NAME:$TAG"
docker push $IMAGE_NAME:$TAG
