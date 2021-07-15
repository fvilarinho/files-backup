#!/bin/bash

BUILD_VERSION=`jq -r .build.version.value ./etc/settings.json`

echo "BUILD_VERSION=$BUILD_VERSION" > .env

docker-compose push

rm -f .env