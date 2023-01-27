FROM alpine
RUN apk --no-cache add curl
COPY entrypoint.sh /entrypoint.sh
WORKDIR /
RUN chmod +x /entrypoint.sh
RUN curl -fsSL github.com/metrico/fluxpipe/releases/latest/download/fluxpipe-server -O && chmod +x /fluxpipe-server
RUN curl -fsSL https://github.com/metrico/fluXpipe/raw/c2j/c2j/c2j -O && chmod +x /c2j
ENTRYPOINT ["/entrypoint.sh"]
