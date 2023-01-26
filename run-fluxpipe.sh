#!/bin/sh
echo "Starting Fluxpipe"
docker run --name fluxpipe -p 8086:8086 -d qxip/fluxpipe
