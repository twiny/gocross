FROM ubuntu:20.04

# install update
RUN apt-get update

# install utils
RUN apt-get -y install apt-utils \
    curl \
    wget \
    git \
    libssl-dev

# install compilers
RUN apt-get -y install make \
    gcc \
    build-essential \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf

# install golang
RUN wget -P /tmp https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf /tmp/go1.19.5.linux-amd64.tar.gz
RUN rm /tmp/go1.19.5.linux-amd64.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

RUN mkdir /app && cd /app
WORKDIR /app