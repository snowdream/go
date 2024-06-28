FROM snowdreamtech/alpine:3.20.0

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

ENV GOPROXY=https://goproxy.io,direct

RUN apk add --no-cache go

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]