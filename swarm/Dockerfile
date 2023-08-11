ARG caddy_version
FROM caddy:${caddy_version}-builder-alpine AS builder

ARG docker_proxy_version
ARG certmagic_s3_version
ARG coraza_caddy_version

RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy@${docker_proxy_version} \
    --with github.com/techknowlogick/certmagic-s3@${certmagic_s3_version}
#   --with github.com/corazawaf/coraza-caddy@${coraza_caddy_version}

FROM caddy:${caddy_version}-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["docker-proxy"]