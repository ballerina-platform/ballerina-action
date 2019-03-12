#!/bin/sh -l

echo "XXXXXX"
/ballerina/runtime/bin/ballerina $*
cat ballerina-internal.log
