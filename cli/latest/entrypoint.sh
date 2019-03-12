#!/bin/sh -l

echo "XXXXXX"
echo $DOCKER_HOST
export DOCKER_HOST='tcp://docker:2375'
/ballerina/runtime/bin/ballerina $*
echo $DOCKER_HOST
cat ballerina-internal.log
ls /tmp -la
touch /tmp/x.txt
ls /tmp -la
