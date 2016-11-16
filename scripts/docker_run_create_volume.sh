#!/usr/bin/env bash

docker run -v /tmp/cache:/cache \
    --entrypoint true \             # instance exits immediately (noop)
    --name [vol-name] \
    [image-name]                    # shared among dev containers