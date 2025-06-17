#!/bin/bash

sudo mkdir -p /opt/3xui/db/
sudo mkdir -p /opt/3xui/cert/

sudo docker run \
   -d \
   --rm \
   -e XRAY_VMESS_AEAD_FORCED=false \
   -v /home/ubuntu/3xui/db/:/etc/x-ui/ \
   -v /home/ubuntu/3xui/cert/:/root/cert/ \
   --network=host \
   --name 3x-ui \
   ghcr.io/mhsanaei/3x-ui:latest
