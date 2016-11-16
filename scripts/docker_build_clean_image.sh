#!/usr/bin/env bash

docker build --no-cache=true -t <out_image_tag_name> -f <docker_file_name> .

# . has to be replaced with the dependent application directory
# for source and script lookup