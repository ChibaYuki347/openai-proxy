#!/bin/sh
envsubst '$OPENAI_ENDPOINT' < /usr/local/openresty/nginx/conf/nginx.conf.template > /usr/local/openresty/nginx/conf/nginx.conf

# OpenRestyを起動
/usr/local/openresty/bin/openresty -g "daemon off;"