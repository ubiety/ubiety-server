#!/bin/sh

yaml-merge traefik.compose.yml portainer.compose.yml zammad.compose.yml > docker-compose.yml

sudo -E docker stack deploy -c docker-compose.yml ubiety