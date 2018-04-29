#!/usr/bin/env bash

# mvn clean package

TAG="lovan/demoapp:latest"
PATH_TO_JAR_NAME=./target/demoapp-0.0.1-SNAPSHOT.jar
CMD_COMMAND="java -jar app.jar"

docker build \
    -t ${TAG} \
    --build-arg PATH_TO_JAR_NAME=${PATH_TO_JAR_NAME} \
    --build-arg CMD_COMMAND="${CMD_COMMAND}" \
    .
