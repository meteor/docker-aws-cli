#!/bin/sh

set -xe

NEW_VERSION="$1"

# Bump Dockerfile:
sed -i "s/ENV AWSCLI_VERSION=.*/ENV AWSCLI_VERSION=${NEW_VERSION}/" Dockerfile

# Build and smoke test:
docker build -t aws-cli:${NEW_VERSION} .
docker run -e AWS_DEFAULT_PROFILE=dev -v ${HOME}/.aws/:/aws aws-cli:${NEW_VERSION} sts get-caller-identity

# Commit, tag: push
git commit -m "aws-cli-${NEW_VERSION}" Dockerfile
git tag -as -m "aws-cli-${NEW_VERSION}" ${NEW_VERSION}
git push
git push --tags

