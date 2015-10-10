FROM alpine:3.2
MAINTAINER Geeked7

RUN echo "http://dl-1.alpinelinux.org/alpine/v3.2/main" >> /etc/apk/repositories
RUN echo "@testing http://dl-1.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add docker-registry@testing

RUN  rm -rf /var/cache/apk/*

VOLUME /var/lib/registry

ENTRYPOINT ["docker-registry"]
CMD ["/etc/docker-registry/config.yml"]
