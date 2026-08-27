FROM nineseconds/mtg:2 AS mtg
FROM alpine:3.19
COPY --from=mtg /mtg /usr/local/bin/mtg
COPY config.toml /config.toml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
