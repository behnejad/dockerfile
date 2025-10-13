#!/bin/bash

nohup socat tcp-l:6379,bind=127.0.0.1,reuseaddr,fork unix:/var/opt/gitlab/redis/redis.socket > /dev/null &
