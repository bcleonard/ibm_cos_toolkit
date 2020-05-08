FROM haproxy:latest

RUN set -x \
      && apt-get update \
      && apt-get install -y --no-install-recommends \
        curl \
      && rm -rf /var/lib/apt/lists/* 
