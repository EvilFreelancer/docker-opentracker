FROM alpine:3.6

EXPOSE 6969

WORKDIR /app
RUN set -xe \
 && apk add --update --no-cache alpine-sdk cvs git zlib-dev \
 && cvs -d :pserver:cvs@cvs.fefe.de:/cvs -z9 co libowfat \
 && cd libowfat \
 && make \
 && cd .. \
 && git clone git://erdgeist.org/opentracker \
 && cd opentracker \
 && make \
 && apk del --purge alpine-sdk cvs git zlib-dev

ENTRYPOINT ["/app/opentracker/opentracker"]
