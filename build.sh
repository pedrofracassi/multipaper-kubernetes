#!/bin/bash

DOCKER_USERNAME=pedrofracassi

# build master
echo "Building master..."
docker build ./master -t=$DOCKER_USERNAME/multipaper-master -f ./master/Dockerfile

# build node
echo "Building node..."
docker build ./nodes -t=$DOCKER_USERNAME/multipaper-node -f ./nodes/Dockerfile

# push master
echo "Pushing master..."
docker push $DOCKER_USERNAME/multipaper-master

# push node
echo "Pushing node..."
docker push $DOCKER_USERNAME/multipaper-node