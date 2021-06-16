#!/usr/bin/env bash
set -e
echo "Executing deploy.sh"
bash -c  "echo \"${DOCKER_PASSWORD}\" | docker login --username chamithra --password-stdin"
./gradlew -p ./monolithic/ui packageToContainer
docker tag ${DOCKER_LOGIN}/monolithic-shop:latest ${DOCKER_LOGIN}/monolithic-shop:latest
docker push ${DOCKER_LOGIN}/monolithic-shop:latest
