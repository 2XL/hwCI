#!/usr/bin/env bash

docker-compose ps
docker-compose logs $1 # <appname>