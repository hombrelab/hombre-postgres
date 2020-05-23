# Dockerfile: hombre-postgres

FROM postgres:12-alpine

ARG version

LABEL version="${version}"
LABEL description="Customized Postgres Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apk add --no-cache \
    bash \
    nano \
    ca-certificates