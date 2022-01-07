#!/bin/bash

echo $RANDOM | md5sum | cut -c 1-8

openssl rand -base64 4

#cat /proc/sys/kernel/random/uuid | cut -c 1-8

echo $(cat /dev/urandom | tr -dc 'a-zA-Z'| head -c 8)

#mac os 需要提前设置 export LC_TYPEC=C