FROM alpine:latest

RUN apk --update --no-cache add openssh

WORKDIR /root

COPY connect.sh ./

RUN chmod +x connect.sh