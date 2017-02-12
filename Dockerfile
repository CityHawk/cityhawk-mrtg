FROM alpine

MAINTAINER cityhawk

RUN apk add --update mrtg 
RUN rm -rf /var/cach/apk/*

COPY crontab.txt /crontab.txt
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT sh /entrypoint.sh
