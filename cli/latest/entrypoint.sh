#!/bin/sh -l

echo $DOCKER_HOST
ls /var/run/docker.sock
echo "XXXXXX"
env
docker pull hello-world
