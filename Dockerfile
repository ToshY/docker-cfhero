FROM golang:1.24 AS build

ARG APPLICATION_VERSION

LABEL maintainer="ToshY (github.com/ToshY)"

WORKDIR /app

RUN <<EOT sh
  set -ex
  wget --retry-on-host-error --retry-on-http-error=429,500,502,503 -O cfhero.tar.gz "https://github.com/musana/CF-Hero/archive/refs/tags/v$APPLICATION_VERSION.tar.gz"
  tar --strip-components=1 --no-same-owner --extract --file cfhero.tar.gz -C ./
EOT

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o /cf-hero ./cmd/cf-hero

FROM gcr.io/distroless/base-debian12 AS release

WORKDIR /

COPY --from=build /cf-hero /cf-hero

USER nonroot:nonroot

ENTRYPOINT ["/cf-hero"]