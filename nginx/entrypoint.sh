#!/bin/sh

# Replace the placeholder with the actual bearer token
sed -i "s/BEARER_TOKEN/${BEARER_TOKEN}/g" /etc/nginx/conf.d/graph-node-8020.conf
sed -i "s/BEARER_TOKEN/${BEARER_TOKEN}/g" /etc/nginx/conf.d/graph-node-5001.conf

# Start Nginx in the foreground
exec nginx -g 'daemon off;'