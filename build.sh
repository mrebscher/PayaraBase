#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
docker build \
  -t mrebscher/payara-base:latest \
  -t mrebscher/payara-base:4.1.1.154 \
  -t mrebscher/payara-base:4.1.1 \
  .
