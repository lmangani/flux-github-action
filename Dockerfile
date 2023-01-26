FROM alpine
RUN apk add --allow-untrusted --update --no-cache curl ca-certificates
WORKDIR /
RUN curl -fsSL github.com/metrico/fluxpipe/releases/latest/download/fluxpipe-server -O && chmod +x fluxpipe-server
CMD ["/fluxpipe-server", "-port", "8086"]
