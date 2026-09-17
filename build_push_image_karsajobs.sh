#!/bin/bash
set -e

IMAGE_NAME="rofik/karsajobs:latest"

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Logging in to Docker Hub..."
echo $PASSWORD_DOCKER_HUB | docker login -u rofik --password-stdin

echo "Pushing Docker image..."
docker push $IMAGE_NAME
