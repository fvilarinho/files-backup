#!/bin/bash

if [ ! -z "$DOCKER_REGISTRY_URL" ]; then 
	echo $DOCKER_REGISTRY_PASSWORD | docker login -u $DOCKER_REGISTRY_USER $DOCKER_REGISTRY_URL --password-stdin
fi

BUILD_NAME=`jq -r .build.name.value ./etc/settings.json`
BUILD_VERSION=`jq -r .build.version.value ./etc/settings.json`

echo "BUILD_NAME=$BUILD_NAME" > .env
echo "BUILD_VERSION=$BUILD_VERSION" >> .env

docker-compose build

rm -f .env