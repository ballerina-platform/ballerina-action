FROM ballerina/ballerina:0.991.0

LABEL version="0.991.0"

LABEL maintainer="WSO2 Inc."

LABEL "com.github.actions.name"="GitHub Action for Ballerina"

LABEL "com.github.actions.description"="Wraps the Ballerina CLI for all the `ballerina <args>` commands"

LABEL "com.github.actions.icon"="triange"

LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/ballerina-platform/github-actions"

LABEL "homepage"="https://ballerina.io/"

ADD entrypoint.sh /entrypoint.sh

ENV DOCKER_API_VERSION "v1.38"

USER root

ENTRYPOINT ["/entrypoint.sh"]
