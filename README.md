# Docker PHP Example
An example of how to pack or run PHP code in docker containers. This example contains a way to run the containers with docker compose or just straight docker to build/run it.

## Docker Compose Example Instructions
1. Run `docker-compose up -d` to bring up the docker stack (PHP-FPM & Nginx)
2. Navigate to localhost:8080 in your browser, you should see php info.

### Other useful notes

#### Shutting it down
Run `docker-compose down` to shut the stack down.

#### Logs
To see logs, run `docker-compose logs`

## Docker Example Instructions

If you would like to push, you need a Docker Hub account.

### How to build
1. Change build-push.sh to your dockerhub username.
2. Run `./build-push.sh` to execute docker build and push.

### How to run
1. Run `./build-run.sh` to run the container.
2. Navigate to localhost:8080 in your browser, you should see php info.

### Other useful notes

#### Logs
To see logs `docker logs --follow nginx-php-fpm`

#### Stop/Remove Container
To stop the container, run `docker stop nginx-php-fpm`
To remove the container, run `docker rm nginx-php-fpm`

#### References & Sources
Special thanks to the sources I pulled some of this stuff from:

https://github.com/mikechernev/dockerised-php

https://semaphoreci.com/community/tutorials/dockerizing-a-php-application

https://github.com/wsargent/docker-cheat-sheet

https://www.upguard.com/articles/docker-vs-vagrant

Read https://hub.docker.com/_/php/ for more info on how to use this image, installing php extensions takes care.