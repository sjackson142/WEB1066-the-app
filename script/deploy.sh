#!/usr/bin/env bash
set -e
echo "Executing deploy.sh"
bash -c  "echo \"${DOCKER_PASSWORD}\" | docker login --username ${DOCKER_LOGIN} --password-stdin"
./gradlew -p ./monolithic/ui packageToContainer
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/monolithic-shop:latest
docker push $DOCKER_LOGIN/monolithic-shop:latest
