#!/bin/sh -l

$BALLERINA_HOME/bin/ballerina $*
if [ -f "./ballerina-internal.log" ]; then
   cat ballerina-internal.log
   exit 1
fi
