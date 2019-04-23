#!/bin/bash

CONTAINER="simple-test-service"
IMAGE="simple-test-service"
VERSION="latest"

echo "Killing any old $CONTAINER containers"
docker kill $CONTAINER || true

echo "Removing any old $CONTAINER containers"
docker rm $CONTAINER || true

echo "Building new image"
docker build -t $IMAGE:$VERSION .

echo "Starting $IMAGE:$VERSION as $CONTAINER"
set -x
docker run \
    -d \
    --rm \
    --name $CONTAINER \
    -p 8080:8080 \
    simple-test-service:latest
    #$IMAGE:$VERSION

docker logs -tf $CONTAINER
