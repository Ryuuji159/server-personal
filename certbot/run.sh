#!/usr/bin/env sh

sudo docker run -it --rm \
  -v "/etc/letsencrypt:/etc/letsencrypt" \
  -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
  -v "$PWD/digitalocean.ini:/digitalocean.ini:ro" \
  certbot/dns-digitalocean --dns-digitalocean-credentials /digitalocean.ini $1

