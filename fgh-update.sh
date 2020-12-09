#!/bin/bash

DIR=$(mktemp -d)

curl -s https://api.github.com/repos/Matt-Gleich/fgh/releases/latest \
| grep -o "browser_download_url.*linux_amd64.tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs -n1 curl --output "$DIR/fgh.tar.gz" -L

rm -rf /home/cjdenio/fgh/*
tar -xf "$DIR/fgh.tar.gz" -C /home/cjdenio/fgh

rm -rf $DIR

