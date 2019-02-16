#!/usr/bin/env bash
set -e

pushd /app
    mvn clean package -DskipTests
popd