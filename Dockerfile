ARG CADDY_VERSION=2
FROM caddy:${CADDY_VERSION}
ARG TARGETPLATFORM
LABEL org.opencontainers.image.authors="syp1975@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/syp1975/caddy-docker"
LABEL org.opencontainers.image.documentation="https://raw.githubusercontent.com/syp1975/caddy-docker/master/README.md"
LABEL org.opencontainers.image.title="Caddy v2 with docker proxy and some other plugins"
LABEL org.opencontainers.image.base.name="caddy:${CADDY_VERSION}"
COPY build/${TARGETPLATFORM}/caddy /usr/bin/caddy
CMD ["caddy", "docker-proxy"]
