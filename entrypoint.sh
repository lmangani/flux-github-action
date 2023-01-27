#!/bin/sh -l
echo "Running Fluxpipe"
echo $1
echo 'result<<EOF' >> $GITHUB_OUTPUT
echo $1 | /fluxpipe-server -stdin >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT
