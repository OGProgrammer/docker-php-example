#!/usr/bin/env bash
docker build --no-cache -t ogprogrammer/docker-php-example:latest .
docker push ogprogrammer/docker-php-example:latest