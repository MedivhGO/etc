#!/bin/bash
echo $RANDOM |cksum |cut -c 1-8
openssl rand -base64 4 |cksum |cut -c 1-8
date +%N |cut -c 1-8