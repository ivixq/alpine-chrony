FROM ivixq/alpine-s6
MAINTAINER ivixq

RUN apk --no-cache  update && \
    apk --no-cache upgrade && \
    apk --no-cache add \
        chrony \
	&& \
    rm -rf /var/cache/apk/*

COPY rootfs /

EXPOSE 123/udp

