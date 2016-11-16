#!/usr/bin/env bash


cd /path/to/docker-compose.yml
docker-compose kill # terminate the services
docker-compose rm -f # remove the containers