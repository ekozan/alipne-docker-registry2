FROM alpine:3.2
MAINTAINER Geeked7

RUN apk add -U docker-registry@testing && \
  rm -rf /var/cache/apk/*

VOLUME /var/lib/registry

ENTRYPOINT ["docker-registry"]
