#!/bin/bash

# melakukan build image dengan nama ghcr.io/cakra17/karsajobs:latest dan tag latest
docker build -t ghcr.io/cakra17/karsajobs:latest .
# login ke github package
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u cakra17 --password-stdin
# push image ke github packages
docker push ghcr.io/cakra17/karsajobs:latest