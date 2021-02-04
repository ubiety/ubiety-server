#!/bin/sh

yaml-merge traefik.compose.yml portainer.compose.yml zammad.compose.yml > docker-compose.yml

set -a && . .env && set +a
sudo docker stack deploy -c docker-compose.yml ubiety