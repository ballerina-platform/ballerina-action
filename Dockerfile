FROM ballerina/ballerina:1.1.1

ADD entrypoint.sh /entrypoint.sh

ENV DOCKER_API_VERSION "v1.38"

USER root

ENTRYPOINT ["/entrypoint.sh"]
