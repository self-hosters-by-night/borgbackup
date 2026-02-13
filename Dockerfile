FROM alpine:3.23

LABEL maintainer="git@facorazza.com"
LABEL description="Container image with Borg Backup, Postgres and Kubernetes tools"

RUN apk add --no-cache \
    bash \
    borgbackup \
    ca-certificates \
    curl \
    jq \
    kubectl \
    openssl \
    postgresql-client \
    tzdata \
    && rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
