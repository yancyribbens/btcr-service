FROM golang:1.12-alpine as builder

MAINTAINER Yancy Ribbens <yancy.ribbens@gmail.com>

RUN apk add --no-cache git bash

RUN go get github.com/yancyribbens/btcr-service
#RUN go get github.com/kulpreet/btcr-service

ENTRYPOINT bash

# Install build dependencies such as git and glide.
#RUN apk add --no-cache git gcc musl-dev
