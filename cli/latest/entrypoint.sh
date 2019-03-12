#!/bin/sh -l

echo $DOCKER_HOST
/ballerina/runtime/bin/ballerina $*
echo $DOCKER_HOST
cat ballerina-internal.log
ls /tmp -la
touch /tmp/x.txt
ls /tmp -la
