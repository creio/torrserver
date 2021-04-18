FROM frolvlad/alpine-glibc:latest

MAINTAINER Alex Creio <ctlos@protonmail.com>

RUN echo "**** install curl ****" && \
  apk add --no-cache curl && mkdir -p /torrserver/db && \
  version=$(curl -s "https://github.com/YouROK/TorrServer/releases/latest" | sed 's#.*tag/\(.*\)\".*#\1#') && \
  echo "**** download $version ****" && \
  curl -o /torrserver/TorrServer -L "https://github.com/YouROK/TorrServer/releases/download/${version}/TorrServer-linux-amd64" && \
  chmod +x /torrserver/TorrServer

EXPOSE 8090
ENTRYPOINT /torrserver/TorrServer --path /torrserver/db
VOLUME /torrserver/db
