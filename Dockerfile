FROM alpine:3.21

LABEL maintainer="git@facorazza.com"
LABEL description="Backup image with Borg and Kubernetes tools"

RUN apk add --no-cache \
    borgbackup \
    kubectl \
    curl \
    tzdata \
    bash \
    jq \
    ca-certificates \
    openssl \
    && rm -rf /var/cache/apk/*

CMD ["/bin/bash"]
