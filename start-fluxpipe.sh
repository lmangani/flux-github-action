#!/bin/sh
docker run --name fluxpipe -p 8086:8086 -d ghcr.io/metrico/fluxpipe:latest /fluxpipe-server -port 8086
