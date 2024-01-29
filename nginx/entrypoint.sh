#!/bin/sh

# Replace the placeholder with the actual bearer token
sed -i "s/$BEARER_TOKEN/${BEARER_TOKEN}/g" /etc/nginx/conf.d/graph-node-8020.conf

# Execute the original entrypoint (Docker CMD)
exec "$@"
