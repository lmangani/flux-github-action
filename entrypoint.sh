#!/bin/sh -l
echo "Running Fluxpipe"
echo $1
result=$(echo $1 | /fluxpipe-server -stdin)
echo "result=$result" >> $GITHUB_OUTPUT
