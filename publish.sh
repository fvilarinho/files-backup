#!/bin/bash

BUILD_NAME=`jq -r .build.name.value ./etc/settings.json`
BUILD_VERSION=`jq -r .build.version.value ./etc/settings.json`

echo "BUILD_NAME=$BUILD_NAME" > .env
echo "BUILD_VERSION=$BUILD_VERSION" >> .env

docker-compose push

rm -f .env