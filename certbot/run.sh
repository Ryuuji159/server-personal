#!/usr/bin/env sh

sudo docker run -it --rm \
  -v "$PWD/etc/letsencrypt:/etc/letsencrypt" \
  -v "$PWD/var/lib/letsencrypt:/var/lib/letsencrypt" \
  -v "$PWD/digitalocean.ini:/digitalocean.ini:ro" \
  certbot/dns-digitalocean --dns-digitalocean \
  --dns-digitalocean-credentials /digitalocean.ini $@

