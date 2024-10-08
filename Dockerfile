FROM ghcr.io/goccy/bigquery-emulator

COPY docker-envtrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-envtrypoint.sh"]
