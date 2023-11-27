#!/bin/bash

# melakukan build image dengan nama ghcr.io/cakra17/shipping-service:latest dan tag latest
docker build -t ghcr.io/cakra17/shipping-service:latest .
# login ke github package
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u cakra17 --password-stdin
# push image ke github packages
docker push ghcr.io/cakra17/shipping-service:latest