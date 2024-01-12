#!/bin/bash
export UID=$(id -u) 2>/dev/null
export GID=$(id -g)
docker compose up transformer # up -d
