#!/bin/bash
IMAGE_NAME=rest_api_demo

docker run \
  --name ${IMAGE_NAME}-test \
  -it \
  --rm \
  --network host \
  --volume $(pwd)/repo:/app \
  --volume $(pwd)/resources:/app/resources \
  $1 $2 $3 $4 $5 $6 $7 $8 $9 \
  $IMAGE_NAME
