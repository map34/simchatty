#!/usr/bin/env bash
set -e

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

pushd "$parent_path"
    docker-compose -f ../docker-compose.yml run --rm webapp /app/docker/scripts/build.sh
    docker-compose -f ../docker-compose.yml up
popd