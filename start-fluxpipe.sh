#!/bin/sh
docker run --name fluxpipe -p 8080:8086 -d ghcr.io/metrico/fluxpipe:latest
