#!/usr/bin/env bash
set -e
echo "Executing deploy.sh"
echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin
docker tag maluuba/monolithic-shop:latest $DOCKER_LOGIN/monolithic-shop:latest
docker push $DOCKER_LOGIN/monolithic-shop:latest
