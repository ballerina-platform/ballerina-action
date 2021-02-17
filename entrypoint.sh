#!/bin/sh -l

if [ -n "$WORKING_DIR" ]
then
  cd $WORKING_DIR
fi
$BALLERINA_HOME/bin/bal $*
