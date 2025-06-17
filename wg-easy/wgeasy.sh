#!/bin/bash

sudo docker run \
  --name wg-easy \
  --rm \
  -d \
  --env WG_SUDO=1 \
  --env WG_QUICK_USERSPACE_IMPLEMENTATION=/app/copguard-go \
  -v /opt/mywg/copguard-go:/app/copguard-go \
  -v /opt/mywg/mywg-quick:/usr/bin/wg-quick \
  -v /dev/net/tun:/dev/net/tun \
  --env LANG=en \
  --env WG_HOST=x.x.x.x \
  --env PASSWORD_HASH='$2a$12$l0e41tp4e9sT41b.pA2gf.9k/Op6byZCvc0WZJf5gEAyt9VSid7VK' \
  --env PORT=51821 \
  --env WG_PORT=8443 \
  --env WG_DEFAULT_DNS='94.140.14.14,94.140.15.15' \
  --env WG_PORT=8443 \
  --env WG_PERSISTENT_KEEPALIVE=60 \
  --volume ~/wg-easy:/etc/wireguard \
  --publish 8443:8443/udp \
  --publish 127.0.0.1:51821:51821/tcp \
  --cap-add NET_ADMIN \
  --cap-add SYS_MODULE \
  --sysctl 'net.ipv4.conf.all.src_valid_mark=1' \
  --sysctl 'net.ipv4.ip_forward=1' \
  ghcr.io/wg-easy/wg-easy

#  --detach \
#  --restart unless-stopped \
#  docker run -it ghcr.io/wg-easy/wg-easy wgpw YOUR_PASSWORD