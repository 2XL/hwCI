#!/usr/bin/env bash

 docker rmi -f $(docker images -a | grep "^<none>" | awk '{print $3}')
