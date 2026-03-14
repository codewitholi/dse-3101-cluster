#!/usr/bin/env bash

docker build \
    --build-arg CTR_UID=$(id -u) \
    --build-arg CTR_GID=$(id -g) \
    -t app-amended \
    -f Dockerfile.Amended \
    .