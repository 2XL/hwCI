#!/usr/bin/env bash

docker run --rm  \
    --volumes-from [vol-name] \
    [image-name]                    # shared among dev containers