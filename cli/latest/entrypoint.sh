#!/bin/sh -l

$BALLERINA_HOME/bin/ballerina $*
cat ballerina-internal.log
