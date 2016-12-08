FROM alpine

MAINTAINER Toshiaki Maki <tmaki@pivotal.io>

RUN apk upgrade && \
    apk add --update \
    curl && \
    mkdir blobs && \
    cd blobs && \
    curl -L -J -O https://download.run.pivotal.io/openjdk-jdk/trusty/x86_64/openjdk-1.8.0_111.tar.gz && \
    curl -L -J -O http://ftp.kddilabs.jp/infosystems/apache/tomcat/tomcat-8/v8.0.39/bin/apache-tomcat-8.0.39.tar.gz
