FROM docker:stable
COPY start-fluxpipe.sh /start-fluxpipe.sh
RUN chmod +x /start-fluxpipe.sh
ENTRYPOINT ["/start-fluxpipe.sh"]
