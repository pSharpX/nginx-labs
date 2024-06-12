#!/bin/sh
echo Building pshapx/nginx-registry-proxy:1.0

docker build --no-cache -t pshapx/nginx-registry-proxy:1.0 . -f Dockerfile

echo Building was successful !!...

read -n 1 -s -r -p "Press any key to continue"