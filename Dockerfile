FROM alpine
COPY entrypoint.sh /entrypoint.sh
WORKDIR /
RUN apk --no-cache add curl
RUN curl -fsSL github.com/metrico/fluxpipe/releases/latest/download/fluxpipe-server -O && chmod +x fluxpipe-server
ENTRYPOINT ["/entrypoint.sh"]
