FROM alpine:3.7

RUN apk --no-cache --update add tzdata ca-certificates
COPY bin/yatteiki-stern /usr/local/bin 

ENTRYPOINT ["yatteiki-stern"]
