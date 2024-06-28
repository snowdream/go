FROM snowdreamtech/alpine:3.20.0

LABEL maintainer="snowdream <sn0wdr1am@qq.com>"

ENV GO111MODULE=on \
    GOPROXY=https://goproxy.io,https://proxy.golang.org,direct

RUN apk add --no-cache go

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]