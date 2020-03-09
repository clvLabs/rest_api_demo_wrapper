#!/bin/bash
IMAGE_NAME=rest_api_demo

# Check parameters
usage()
{
  echo "Usage: $0 [options]"
  echo
  echo "Options:"
  echo "  -c, --no-cache: avoid using Docker's cache"
}

CACHE_PARAM=""

while [ "$1" != "" ]; do
  case $1 in
    -h | --help )
      usage
      exit 1
      ;;
    -c | --no-cache )
      CACHE_PARAM="--no-cache"
      ;;
    * )
      usage
      exit 1
  esac
  shift
done

docker build \
  -t $IMAGE_NAME \
  $CACHE_PARAM \
  $1 $2 $3 $4 $5 $6 $7 $8 $9 \
  .
