#!/bin/bash

docker stop node-exporter
docker rm node-exporter

docker run -d \
  -p 9100:9100 \
  -e PUID=1000 \
  -e PGID=1000 \
  -v "/:/host:ro,rslave" \
  --restart always \
  --name=node-exporter \
  prom/node-exporter:v1.6.0 \
  --path.rootfs=/host