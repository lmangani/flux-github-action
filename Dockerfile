FROM alpine
COPY entrypoint.sh /entrypoint.sh
WORKDIR /
RUN curl -fsSL github.com/metrico/fluxpipe/releases/latest/download/fluxpipe-server -O && chmod +x fluxpipe-server
ENTRYPOINT ["/entrypoint.sh"]
