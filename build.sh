#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
docker build \
  -t mrebscher/payarabase:latest \
  -t mrebscher/payarabase:4.1.1.154 \
  -t mrebscher/payarabase:4.1.1 \
  .
