#!/bin/bash

# melakukan build image dengan nama item-app dan tag v1
docker build -t item-app:v1 .
# melihat daftar image di lokal
docker image ls
# mengubah nama image sesuai dengan github package
docker tag item-app:v1 ghcr.io/cakra17/item-app:v1
# login ke github package
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u cakra17 --password-stdin
# push image ke github packages
docker push ghcr.io/cakra17/item-app:v1