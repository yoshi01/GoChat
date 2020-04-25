FROM golang:latest

# RUN mkdir /go/src

WORKDIR /go/src

ADD ./src /go/src

EXPOSE 8080
