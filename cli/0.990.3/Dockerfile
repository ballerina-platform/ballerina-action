FROM ballerina/ballerina:0.990.3

LABEL version="0.990.3"

LABEL maintainer="WSO2 Inc."

LABEL "com.github.actions.name"="GitHub Action for Ballerina"

LABEL "com.github.actions.description"="Wraps the Ballerina CLI for all the `ballerina <args>` commands"

LABEL "com.github.actions.icon"="triange"

LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/ballerina-platform/github-actions"

LABEL "homepage"="https://ballerina.io/"

ADD patch/ballerina-packerina-0.990.3.jar /ballerina/runtime/bre/lib/ballerina-packerina-0.990.3.jar

ADD kubernetes-extension-0.990.3.jar /ballerina/runtime/bre/lib/kubernetes-extension-0.990.3.jar

ADD docker-extension-0.990.3.jar /ballerina/runtime/bre/lib/docker-extension-0.990.3.jar

ADD hello.bal /tmp/hello.bal

ADD entrypoint.sh /entrypoint.sh

ENV DOCKER_HOST "tcp://127.0.0.1:2375"

USER root

ENTRYPOINT ["/entrypoint.sh"]
