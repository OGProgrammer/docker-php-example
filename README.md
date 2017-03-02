# Docker PHP Example
An example of how to pack or run PHP code in docker containers. This example contains a way to run the containers with docker compose or just straight docker to build/run it.

## Docker Compose Example Instructions
1. Run composer install to install robo or skip this step if you already have robo globally.
2. Run `docker-compose up -d` to bring up the docker stack (PHP-FPM & Nginx)
3. Navigate to localhost:8080 in your browser, you should see php info.

Run `docker-compose down` to shut the stack down.

To see logs `docker logs --follow `

## Docker Example Instructions


Special thanks to the sources I pulled some of this stuff from:

https://github.com/mikechernev/dockerised-php

https://semaphoreci.com/community/tutorials/dockerizing-a-php-application

https://github.com/wsargent/docker-cheat-sheet

Read https://hub.docker.com/_/php/ for more info on how to use this image, installing php extensions takes care.