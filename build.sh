#!/bin/bash

BENTO4_VERSION=$(git -c 'versionsort.suffix=-'  \
    ls-remote --exit-code --refs --sort='version:refname' \
     --tags 'https://github.com/axiomatic-systems/Bento4' '*.*.*' | tail -n1 | sed 's/.*\///')

docker build --build-arg BENTO4_VERSION=$BENTO4_VERSION -t gopiio/bento4:latest -t gopiio/bento4:$BENTO4_VERSION . 