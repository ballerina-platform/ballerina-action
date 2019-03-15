#!/bin/sh -l

$BALLERINA_HOME/bin/ballerina build
if [ -f "./ballerina-internal.log" ]; then
   cat ballerina-internal.log
fi
