#!/usr/bin/env bash
set -e
echo "Executing deploy.sh"
bash -c  "echo \"${DOCKER_PASSWORD}\" | docker login --username chamithra --password-stdin"
docker pull zutherb/monolithic-shop:latest
docker tag zutherb/monolithic-shop:latest ${DOCKER_LOGIN}/monolithic-shop:latest
docker push ${DOCKER_LOGIN}/monolithic-shop:latest
