#!/bin/sh -l

$BALLERINA_HOME/bin/ballerina $*
cat ballerina-internal.log
ls /tmp -la
touch /tmp/x.txt
ls /tmp -la
