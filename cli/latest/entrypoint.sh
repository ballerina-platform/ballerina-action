#!/bin/sh -l

echo $DOCKER_HOST
$BALLERINA_HOME/bin/ballerina $*
cat ballerina-internal.log
ls /tmp -la
touch /tmp/x.txt
ls /tmp -la
