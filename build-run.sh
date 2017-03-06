#!/usr/bin/env bash
docker build --no-cache -t ogprogrammer/docker-php-example:latest .
docker run -p 8080:80 --name nginx-php-fpm -d ogprogrammer/docker-php-example
