FROM golang:latest

# RUN mkdir /go/src

# NSQ
RUN cd /usr/local/src/ \
    && wget https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.3.8.linux-amd64.go1.6.2.tar.gz \
    && tar xzvf nsq-0.3.8.linux-amd64.go1.6.2.tar.gz
RUN cd /usr/local/src/nsq-0.3.8.linux-amd64.go1.6.2/ \
    && tar cf - . | (cd /usr/local; tar xvf -)

WORKDIR /go/src

ADD ./src /go/src

EXPOSE 8080
