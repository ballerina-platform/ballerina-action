FROM ballerina/ballerina:nightly-2201.1.x

ADD entrypoint.sh /entrypoint.sh

ENV DOCKER_API_VERSION "v1.38"

USER root

ENTRYPOINT ["/entrypoint.sh"]
