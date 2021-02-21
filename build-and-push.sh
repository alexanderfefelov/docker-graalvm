#!/usr/bin/env bash

# Elevate privileges
[ $UID -eq 0 ] || exec sudo --preserve-env=JAVA_VERSION bash "$0" "$@"

. settings.sh

readonly TAG=$IMAGE_NAME:$GRAALVM_VERSION-java$JAVA_VERSION

echo GraalVM version: $GRAALVM_VERSION
echo Java version: $JAVA_VERSION
echo Tag: $TAG

set -e

docker build \
  --build-arg GRAALVM_VERSION \
  --build-arg JAVA_VERSION \
  --tag $TAG \
  .

docker push $TAG
