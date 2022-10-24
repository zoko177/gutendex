#!/bin/bash

docker-compose down
#docker-compose --env-file $(pwd)/.env up -d --build
docker-compose --env-file $(pwd)/.env up --build