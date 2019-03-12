FROM ballerina/ballerina:latest

USER root

RUN apk add --no-cache \
		ca-certificates

# set up nsswitch.conf for Go's "netgo" implementation (which Docker explicitly uses)
# - https://github.com/docker/docker-ce/blob/v17.09.0-ce/components/engine/hack/make.sh#L149
# - https://github.com/golang/go/blob/go1.9.1/src/net/conf.go#L194-L275
# - docker run --rm debian:stretch grep '^hosts:' /etc/nsswitch.conf
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf

ENV DOCKER_CHANNEL stable
ENV DOCKER_VERSION 18.09.3
# TODO ENV DOCKER_SHA256
# https://github.com/docker/docker-ce/blob/5b073ee2cf564edee5adca05eee574142f7627bb/components/packaging/static/hash_files !!
# (no SHA file artifacts on download.docker.com yet as of 2017-06-07 though)

RUN set -eux; \
	\
# this "case" statement is generated via "update.sh"
	apkArch="$(apk --print-arch)"; \
	case "$apkArch" in \
		x86_64) dockerArch='x86_64' ;; \
		armhf) dockerArch='armel' ;; \
		aarch64) dockerArch='aarch64' ;; \
		ppc64le) dockerArch='ppc64le' ;; \
		s390x) dockerArch='s390x' ;; \
		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;\
	esac; \
	\
	if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then \
		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; \
		exit 1; \
	fi; \
	\
	tar --extract \
		--file docker.tgz \
		--strip-components 1 \
		--directory /usr/local/bin/ \
	; \
	rm docker.tgz; \
	\
	dockerd --version; \
	docker --version


LABEL version="latest"

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

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
