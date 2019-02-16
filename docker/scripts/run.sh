#!/usr/bin/env bash
set -e

#pushd /app
    echo "DEBUG: ${DEBUG}"
    if [[ $DEBUG =~ 1 ]]; then
        java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=0.0.0.0:8080,suspend=y -jar target/gs-spring-boot-0.1.0.jar
    else
        java -jar target/gs-spring-boot-0.1.0.jar
    fi
#popd