#!/bin/sh -l

echo "XXXXXX"
env
ls /var/run/docker.sock
/ballerina/runtime/bin/ballerina $*
cat ballerina-internal.log
