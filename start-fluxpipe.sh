#!/bin/sh
echo "Starting Fluxpipe"
docker run --name fluxpipe -ti --rm -p 8086:8086 -d ghcr.io/metrico/fluxpipe:latest
