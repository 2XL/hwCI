#!/usr/bin/env bash


exit 0
# tag and push image
docker images

#REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
#flaskproject-base   latest              ae2fc060c9ad        9 minutes ago       544.5 MB
docker tag ae2fc060c9ad chenglongzq/flaskproject-base:latest

docker login

docker push