#! /bin/bash

curl -o {volumes/certbot/conf/,https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/}options-ssl-nginx.conf
openssl dhparam -out volumes/certbot/conf/ssl-dhparams.pem 2048
