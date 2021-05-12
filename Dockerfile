FROM golang:alpine AS build
MAINTAINER "ATP <hello@zatp.com>"

ENV GO111MODULE=on CGO_ENABLED=0

RUN go get github.com/mpolden/echoip/...

FROM alpine:edge
EXPOSE 8080

COPY --from=build /go/bin/echoip /echoip/
COPY /geoip /echoip
COPY /html /echoip/html
COPY run.sh /echoip

WORKDIR /echoip
CMD ["/echoip/run.sh"]

