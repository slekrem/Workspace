#!/bin/bash

docker-machine create --driver virtualbox dev

docker-machine ssh dev docker run --name mysql \
    -e MYSQL_ALLOW_EMPTY_PASSWORD \
    -d mysql:latest
