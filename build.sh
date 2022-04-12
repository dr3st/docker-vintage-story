#!/usr/bin/env bash

# you can pass version via parameter, defaults to 1.14.10
: ${VS_VERSION=1.14.10}
IMAGE_TAG="vintagestory:${VS_VERSION}"

docker build --build-arg "VS_VERSION=${VS_VERSION}" -t "${IMAGE_TAG}" $* .
