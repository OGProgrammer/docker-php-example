#!/usr/bin/env bash
docker kill $(docker ps -q)
docker_clean_ps
docker rmi $(docker images -a -q)