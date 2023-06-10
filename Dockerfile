FROM alpinelinux/docker-cli:latest

LABEL maintainer="ramory-l <ramory.lorch@gmail.com>" \
      org.label-schema.name="docker-stack-deploy" \
      org.label-schema.description="Deploy docker stack" \
      org.label-schema.vendor="Mikhail Strizhenov" \
      org.opencontainers.image.source="https://github.com/ramory-l/docker-stack-deploy" \
      org.label-schema.docker.cmd="docker run -rm -v "${PWD}":/github/workspace ghcr.io/ramory-l/docker-stack-deploy"

RUN apk add --no-cache openssh-client findutils bash

COPY scripts/*.sh /

WORKDIR /github/workspace

ENTRYPOINT [ "/docker-entrypoint.sh" ]
