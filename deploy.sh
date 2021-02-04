#!/bin/sh

yaml-merge traefik.compose.yml portainer.compose.yml zammad.compose.yml > docker-compose.yml

set -a
source .env
set +a

sudo -E docker stack deploy -c docker-compose.yml ubiety