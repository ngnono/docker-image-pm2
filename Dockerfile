# Dockerfile
FROM keymetrics/pm2:latest-alpine

RUN apk add --no-cache git

RUN apk add --no-cache tzdata && \
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone && \
apk del tzdata
