# Dockerfile
FROM keymetrics/pm2:latest-alpine

RUN apk add --no-cache git

RUN apk add --no-cache tzdata && \
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone && \
apk del tzdata

RUN set -ex && apk add --update bash python python-dev py-pip build-base && rm -rf /var/cache/apk/*
