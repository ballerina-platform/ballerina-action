FROM ballerina/ballerina:2201.13.0-m1

ADD entrypoint.sh /entrypoint.sh

ENV DOCKER_API_VERSION "v1.38"

USER root

ENTRYPOINT ["/entrypoint.sh"]
