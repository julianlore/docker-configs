#!/usr/bin/env bash
docker-compose -f caddy.yml exec caddy caddy reload -config /etc/caddy/Caddyfile
