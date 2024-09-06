#!/bin/bash
set -xeuo pipefail
PLAIN_NAME=lrp-u-httpd
HUB_NAME=dhagberg/$PLAIN_NAME
CI_NAME=cga-ci:5000/$PLAIN_NAME

docker build --pull -t $HUB_NAME .

# Tag and push if given
if [ $# -gt 0 ]; then
  if [ "$1" = "push" ]; then
    docker push $HUB_NAME
    docker tag  $HUB_NAME $CI_NAME
    docker push $CI_NAME
  fi
fi
