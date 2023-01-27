FROM alpine
RUN apk --no-cache add curl
COPY entrypoint.sh /entrypoint.sh
WORKDIR /
RUN chmod +x /entrypoint.sh
RUN curl -fsSL github.com/metrico/fluxpipe/releases/latest/download/fluxpipe-server -O && chmod +x /fluxpipe-server
ENTRYPOINT ["/entrypoint.sh"]
