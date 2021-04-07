FROM ubuntu:latest

MAINTAINER Alex Creio <ctlos@protonmail.com>

RUN echo "**** install curl ****" && \
  apt-get update && apt-get install -y curl && mkdir /torrserver && \
  version=$(curl -s "https://github.com/YouROK/TorrServer/releases/latest" | sed 's#.*tag/\(.*\)\".*#\1#') && \
  echo "**** download $version ****" && \
  curl -o /torrserver/TorrServer \
  -L "https://github.com/YouROK/TorrServer/releases/download/${version}/TorrServer-linux-amd64" && \
  chmod +x /torrserver/TorrServer

EXPOSE 8090
WORKDIR /torrserver
VOLUME /torrserver
ENTRYPOINT /torrserver/TorrServer
