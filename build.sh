#!/bin/bash


if [ -z "$1" ]
  then
    echo "No argument supplied. Provide version"
    exit;
fi

echo "Build 3bittalk/php-apache-mysql:$1 for Linux Ubuntu..."

# Set up Docker BuildX builder if it doesn't exist
if ! docker buildx inspect ubuntu-builder &>/dev/null; then
  echo "Creating new BuildX builder for Ubuntu..."
  docker buildx create --name ubuntu-builder --use
fi

# Build for Linux/Ubuntu platform
echo "Building for Linux/Ubuntu platform..."
docker buildx build --platform linux/amd64 --push \
  -t 3bittalk/php-apache-mysql:$1 \
  -t 3bittalk/php-apache-mysql:latest .

# List the images
docker images | grep 3bittalk
